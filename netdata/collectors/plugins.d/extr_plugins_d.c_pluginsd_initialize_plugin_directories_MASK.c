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
 int /*<<< orphan*/  CONFIG_DIR ; 
 int /*<<< orphan*/  CONFIG_SECTION_GLOBAL ; 
 int FILENAME_MAX ; 
 int /*<<< orphan*/  PLUGINSD_MAX_DIRECTORIES ; 
 int /*<<< orphan*/  PLUGINS_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  config_isspace ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  plugin_directories ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

static inline int FUNC5() {
    char plugins_dirs[(FILENAME_MAX * 2) + 1];
    static char *plugins_dir_list = NULL;

    // Get the configuration entry
    if(FUNC1(!plugins_dir_list)) {
        FUNC3(plugins_dirs, FILENAME_MAX * 2, "\"%s\" \"%s/custom-plugins.d\"", PLUGINS_DIR, CONFIG_DIR);
        plugins_dir_list = FUNC4(FUNC0(CONFIG_SECTION_GLOBAL, "plugins directory",  plugins_dirs));
    }

    // Parse it and store it to plugin directories
    return FUNC2(plugins_dir_list, plugin_directories, PLUGINSD_MAX_DIRECTORIES, config_isspace);
}