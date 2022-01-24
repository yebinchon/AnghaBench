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
struct dirent {scalar_t__ d_type; int /*<<< orphan*/ * d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ DT_DIR ; 
 int /*<<< orphan*/  FILENAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netdata_configured_host_prefix ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC7(void)
{
    static int numa_node_count = -1;

    if (numa_node_count != -1)
        return numa_node_count;

    numa_node_count = 0;

    char name[FILENAME_MAX + 1];
    FUNC5(name, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, "/sys/devices/system/node");
    char *dirname = FUNC1("plugin:proc:/sys/devices/system/node", "directory to monitor", name);

    DIR *dir = FUNC3(dirname);
    if(dir) {
        struct dirent *de = NULL;
        while((de = FUNC4(dir))) {
            if(de->d_type != DT_DIR)
                continue;

            if(FUNC6(de->d_name, "node", 4) != 0)
                continue;

            if(!FUNC2(de->d_name[4]))
                continue;

            numa_node_count++;
        }
        FUNC0(dir);
    }

    return numa_node_count;
}