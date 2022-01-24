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
struct rrdhost_system_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SECTION_BACKEND ; 
 int /*<<< orphan*/  CONFIG_SECTION_GLOBAL ; 
 int /*<<< orphan*/  D_RRDHOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  default_health_enabled ; 
 int /*<<< orphan*/  default_rrd_history_entries ; 
 int /*<<< orphan*/  default_rrd_memory_mode ; 
 int /*<<< orphan*/  default_rrd_update_every ; 
 int /*<<< orphan*/  default_rrdpush_api_key ; 
 int /*<<< orphan*/  default_rrdpush_destination ; 
 int /*<<< orphan*/  default_rrdpush_enabled ; 
 int /*<<< orphan*/  default_rrdpush_send_charts_matching ; 
 int gap_when_lost_iterations_above ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  localhost ; 
 int /*<<< orphan*/  netdata_configured_timezone ; 
 int /*<<< orphan*/  os_type ; 
 int /*<<< orphan*/  program_name ; 
 int /*<<< orphan*/  program_version ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rrdhost_system_info*,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int rrdset_free_obsolete_time ; 
 int /*<<< orphan*/  FUNC11 () ; 

void FUNC12(char *hostname, struct rrdhost_system_info *system_info) {
    rrdset_free_obsolete_time = FUNC1(CONFIG_SECTION_GLOBAL, "cleanup obsolete charts after seconds", rrdset_free_obsolete_time);
    gap_when_lost_iterations_above = (int)FUNC1(CONFIG_SECTION_GLOBAL, "gap when lost iterations above", gap_when_lost_iterations_above);
    if (gap_when_lost_iterations_above < 1)
        gap_when_lost_iterations_above = 1;

    FUNC3();
    FUNC6();
    FUNC10();

    FUNC2(D_RRDHOST, "Initializing localhost with hostname '%s'", hostname);
    FUNC8();
    localhost = FUNC9(
            hostname
            , FUNC5()
            , FUNC4()
            , os_type
            , netdata_configured_timezone
            , FUNC0(CONFIG_SECTION_BACKEND, "host tags", "")
            , program_name
            , program_version
            , default_rrd_update_every
            , default_rrd_history_entries
            , default_rrd_memory_mode
            , default_health_enabled
            , default_rrdpush_enabled
            , default_rrdpush_destination
            , default_rrdpush_api_key
            , default_rrdpush_send_charts_matching
            , system_info
            , 1
    );
    FUNC7();
	FUNC11();
}