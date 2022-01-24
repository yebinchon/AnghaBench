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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  netdata_configured_stock_config_dir ; 
 int /*<<< orphan*/  netdata_configured_user_config_dir ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stream_config ; 

__attribute__((used)) static void FUNC4() {
    errno = 0;
    char *filename = FUNC3(netdata_configured_user_config_dir, "stream.conf");
    if(!FUNC0(&stream_config, filename, 0)) {
        FUNC2("CONFIG: cannot load user config '%s'. Will try stock config.", filename);
        FUNC1(filename);

        filename = FUNC3(netdata_configured_stock_config_dir, "stream.conf");
        if(!FUNC0(&stream_config, filename, 0))
            FUNC2("CONFIG: cannot load stock config '%s'. Running with internal defaults.", filename);
    }
    FUNC1(filename);
}