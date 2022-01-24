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
 int /*<<< orphan*/  CONFIG_SECTION_HEALTH ; 
 int /*<<< orphan*/  FILENAME_MAX ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  netdata_configured_stock_config_dir ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

inline char *FUNC2(void) {
    char buffer[FILENAME_MAX + 1];
    FUNC1(buffer, FILENAME_MAX, "%s/health.d", netdata_configured_stock_config_dir);
    return FUNC0(CONFIG_SECTION_HEALTH, "stock health configuration directory", buffer);
}