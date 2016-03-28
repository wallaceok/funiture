<%@ page import="com.app.mvc.acl.util.LoginUtil" %><%@ page contentType="text/html;charset=UTF-8" language="java" %><!DOCTYPE html><html lang="en"><head>    <jsp:include page="../common/backend_common.jsp"/></head><body class="no-skin"><div id="navbar" class="navbar navbar-default">    <div class="navbar-container">        <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler">            <span class="sr-only">Toggle sidebar</span>            <span class="icon-bar"></span>            <span class="icon-bar"></span>            <span class="icon-bar"></span>        </button>        <div class="navbar-header pull-left">            <a href="index.html#" class="navbar-brand">                <small>                    <i class="fa fa-leaf"></i>                    管理员控制台                </small>            </a>        </div>        <div class="navbar-buttons navbar-header pull-right" role="navigation">            <ul class="nav ace-nav">                <li class="light-blue dropdown-modal">                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">                        <span class="user-info">                            <small>Welcome,</small>                            <%                                out.print(LoginUtil.getUserFromCookie(request, response).getUser().getUsername());                            %>                        </span>                        <i class="ace-icon fa fa-caret-down"></i>                    </a>                    <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">                        <li>                            <a href="#"> <i class="ace-icon fa fa-cog"></i>                                设置                            </a>                        </li>                        <li>                            <a href="profile.html"> <i class="ace-icon fa fa-user"></i>                                个人资料                            </a>                        </li>                        <li class="divider"></li>                        <li>                            <a href="#"> <i class="ace-icon fa fa-power-off"></i>                                注销                            </a>                        </li>                    </ul>                </li>            </ul>        </div>    </div></div><div class="main-container" id="main-container">    <script type="text/javascript">        try {            ace.settings.check('main-container', 'fixed')        } catch (e) {        }    </script>    <div id="sidebar" class="sidebar responsive">        <script type="text/javascript">            try {                ace.settings.check('sidebar', 'fixed')            } catch (e) {            }        </script>        <ul class="nav nav-list">            <li class="active">                <a class="popstyle" href="/sys/user/page.do" target="_blank">                    <i class="menu-icon fa fa-tachometer"></i>                    <span class="menu-text"> 首页 </span>                </a>                <b class="arrow"></b>            </li>            <li class="">                <a href="index.html#" class="dropdown-toggle">                    <i class="menu-icon fa fa-desktop"></i>                    <span class="menu-text"> 权限管理 </span>                    <b class="arrow fa fa-angle-down"></b>                </a>                <b class="arrow"></b>                <ul class="submenu">                    <li class="">                        <a class="popstyle" href="/sys/user/page.do" target="_blank">                            <i class="menu-icon fa fa-caret-right"></i>                            用户管理                        </a>                        <b class="arrow"></b>                    </li>                    <li class="">                        <a class="popstyle" href="/sys/role/page.do" target="_blank">                            <i class="menu-icon fa fa-caret-right"></i>                            角色管理                        </a>                        <b class="arrow"></b>                    </li>                    <li class="">                        <a class="popstyle" href="/sys/aclModule/page.do" target="_blank">                            <i class="menu-icon fa fa-caret-right"></i>                            权限管理                        </a>                        <b class="arrow"></b>                    </li>                </ul>            </li>            <li class="">                <a href="index.html#" class="dropdown-toggle">                    <i class="menu-icon fa fa-desktop"></i>                    <span class="menu-text"> 展示管理 </span>                    <b class="arrow fa fa-angle-down"></b>                </a>                <ul class="submenu">                    <li class="">                        <a class="popstyle" href="" target="_blank">                            <i class="menu-icon fa fa-caret-right"></i>                            轮播图                        </a>                        <b class="arrow"></b>                    </li>                    <li class="">                        <a class="popstyle" href="" target="_blank">                            <i class="menu-icon fa fa-caret-right"></i>                            产品管理                        </a>                        <b class="arrow"></b>                    </li>                    <li class="">                        <a class="popstyle" href="" target="_blank">                            <i class="menu-icon fa fa-caret-right"></i>                            文章管理                        </a>                        <b class="arrow"></b>                    </li>                </ul>            </li>            <li class="">                <a href="index.html#" class="dropdown-toggle">                    <i class="menu-icon fa menu-icon fa fa-flask "></i>                    <span class="menu-text"> 相关报表 </span>                    <b class="arrow fa fa-angle-down"></b>                </a>                <b class="arrow"></b>                <ul class="submenu">                    <li class="">                        <a href="javascript:void(0)" class="direct" data-value="http://www.baidu.com">                            <i class="menu-icon fa fa-caret-right"></i>                            test                        </a>                        <b class="arrow"></b>                    </li>                </ul>            </li>        </ul>        <!-- /.nav-list -->        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">            <i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left"               data-icon2="ace-icon fa fa-angle-double-right"></i>        </div>        <script type="text/javascript">            try {                ace.settings.check('sidebar', 'collapsed')            } catch (e) {            }        </script>    </div>    <div class="main-content">        <iframe id="innerFrame" src="http://www.test.com:8080/sys/acl/list.json?aclModuleId=1" width="99%" height="900px"></iframe>    </div>    <!-- /.main-content -->    <a href="index.html#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse display">        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>    </a></div><!-- /.main-container --><!-- basic scripts --><!--[if !IE]> --><script src="/assets/js/jquery-2.1.0.min.js"></script><!-- <![endif]--><!--[if IE]><script src="/assets/js/jquery-1.11.0.min.js"></script><![endif]--><!--[if !IE]> --><script type="text/javascript">    window.jQuery || document.write("<script src='/assets/js/jquery.min.js'>" + "<" + "/script>");</script><!-- <![endif]--><!--[if IE]><script type="text/javascript">    window.jQuery || document.write("<script src='/assets/js/jquery1x.min.js'>" + "<" + "/script>");</script><![endif]--><script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script><!-- page specific plugin scripts --><!--[if lte IE 8]><script src="/assets/js/excanvas.min.js"></script><![endif]--><script src="/assets/js/jquery-ui.custom.min.js"></script><script src="/assets/js/jquery.ui.touch-punch.min.js"></script><script src="/assets/js/jquery.easypiechart.min.js"></script><script src="/assets/js/jquery.sparkline.min.js"></script><script src="/assets/js/flot/jquery.flot.min.js"></script><script src="/assets/js/flot/jquery.flot.pie.min.js"></script><script src="/assets/js/flot/jquery.flot.resize.min.js"></script><!-- ace scripts --><script src="/assets/js/ace-elements.min.js"></script><script src="/assets/js/ace.min.js"></script><script>    $(document).ready(function () {        $(".popstyle").removeAttr("target");        $(".popstyle").each(function () {            var $this = $(this)            tmp = $this.attr("href");            $this.attr("data", tmp);            $this.attr("href", "javascript:void(0)");        })        $(".popstyle").click(function () {            var $this = $(this)            $("iframe").attr(                    'src',                    $this.attr("data")            );        });        $(".direct").click(function () {            var $this = $(this)            $("iframe").attr(                    'src',                    $this.attr("data-value")            );        });    });</script></body></html>