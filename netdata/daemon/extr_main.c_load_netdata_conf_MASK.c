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
 int FUNC0 (char*,char) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  netdata_configured_stock_config_dir ; 
 int /*<<< orphan*/  netdata_configured_user_config_dir ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(char *filename, char overwrite_used) {
    errno = 0;

    int ret = 0;

    if(filename && *filename) {
        ret = FUNC0(filename, overwrite_used);
        if(!ret)
            FUNC1("CONFIG: cannot load config file '%s'.", filename);
    }
    else {
        filename = FUNC4(netdata_configured_user_config_dir, "netdata.conf");

        ret = FUNC0(filename, overwrite_used);
        if(!ret) {
            FUNC3("CONFIG: cannot load user config '%s'. Will try the stock version.", filename);
            FUNC2(filename);

            filename = FUNC4(netdata_configured_stock_config_dir, "netdata.conf");
            ret = FUNC0(filename, overwrite_used);
            if(!ret)
                FUNC3("CONFIG: cannot load stock config '%s'. Running with internal defaults.", filename);
        }

        FUNC2(filename);
    }

    return ret;
}