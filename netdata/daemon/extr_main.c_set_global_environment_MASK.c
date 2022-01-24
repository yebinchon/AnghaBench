#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SECTION_PLUGINS ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  default_rrd_update_every ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  netdata_configured_cache_dir ; 
 int /*<<< orphan*/  netdata_configured_home_dir ; 
 char* netdata_configured_host_prefix ; 
 char* netdata_configured_hostname ; 
 int /*<<< orphan*/  netdata_configured_log_dir ; 
 int /*<<< orphan*/  netdata_configured_primary_plugins_dir ; 
 int /*<<< orphan*/  netdata_configured_stock_config_dir ; 
 int /*<<< orphan*/  netdata_configured_user_config_dir ; 
 int /*<<< orphan*/  netdata_configured_varlib_dir ; 
 int /*<<< orphan*/  netdata_configured_web_dir ; 
 char* program_version ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,...) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6() {
    {
        char b[16];
        FUNC4(b, 15, "%d", default_rrd_update_every);
        FUNC3("NETDATA_UPDATE_EVERY", b, 1);
    }

    FUNC3("NETDATA_VERSION"          , program_version, 1);
    FUNC3("NETDATA_HOSTNAME"         , netdata_configured_hostname, 1);
    FUNC3("NETDATA_CONFIG_DIR"       , FUNC5(netdata_configured_user_config_dir),  1);
    FUNC3("NETDATA_USER_CONFIG_DIR"  , FUNC5(netdata_configured_user_config_dir),  1);
    FUNC3("NETDATA_STOCK_CONFIG_DIR" , FUNC5(netdata_configured_stock_config_dir), 1);
    FUNC3("NETDATA_PLUGINS_DIR"      , FUNC5(netdata_configured_primary_plugins_dir),      1);
    FUNC3("NETDATA_WEB_DIR"          , FUNC5(netdata_configured_web_dir),          1);
    FUNC3("NETDATA_CACHE_DIR"        , FUNC5(netdata_configured_cache_dir),        1);
    FUNC3("NETDATA_LIB_DIR"          , FUNC5(netdata_configured_varlib_dir),       1);
    FUNC3("NETDATA_LOG_DIR"          , FUNC5(netdata_configured_log_dir),          1);
    FUNC3("HOME"                     , FUNC5(netdata_configured_home_dir),         1);
    FUNC3("NETDATA_HOST_PREFIX"      , netdata_configured_host_prefix, 1);

    FUNC1();

    // set the path we need
    char path[1024 + 1], *p = FUNC2("PATH");
    if(!p) p = "/bin:/usr/bin";
    FUNC4(path, 1024, "%s:%s", p, "/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin");
    FUNC3("PATH", FUNC0(CONFIG_SECTION_PLUGINS, "PATH environment variable", path), 1);

    // python options
    p = FUNC2("PYTHONPATH");
    if(!p) p = "";
    FUNC3("PYTHONPATH", FUNC0(CONFIG_SECTION_PLUGINS, "PYTHONPATH environment variable", p), 1);

    // disable buffering for python plugins
    FUNC3("PYTHONUNBUFFERED", "1", 1);

    // switch to standard locale for plugins
    FUNC3("LC_ALL", "C", 1);
}