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
typedef  int /*<<< orphan*/  usec_t ;
typedef  int /*<<< orphan*/  procfile ;
typedef  int /*<<< orphan*/  RRDSET ;
typedef  int /*<<< orphan*/  RRDDIM ;

/* Variables and functions */
 int /*<<< orphan*/  FILENAME_MAX ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_SYSTEM_ENTROPY ; 
 int /*<<< orphan*/  PLUGIN_PROC_NAME ; 
 int /*<<< orphan*/  PROCFILE_FLAG_DEFAULT ; 
 int /*<<< orphan*/  RRDSET_TYPE_LINE ; 
 int /*<<< orphan*/  RRD_ALGORITHM_ABSOLUTE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  netdata_configured_host_prefix ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long long) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 unsigned long long FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 

int FUNC12(int update_every, usec_t dt) {
    (void)dt;

    static procfile *ff = NULL;

    if(FUNC11(!ff)) {
        char filename[FILENAME_MAX + 1];
        FUNC9(filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, "/proc/sys/kernel/random/entropy_avail");
        ff = FUNC2(FUNC0("plugin:proc:/proc/sys/kernel/random/entropy_avail", "filename to monitor", filename), "", PROCFILE_FLAG_DEFAULT);
        if(FUNC11(!ff)) return 1;
    }

    ff = FUNC3(ff);
    if(FUNC11(!ff)) return 0; // we return 0, so that we will retry to open it next time

    unsigned long long entropy = FUNC10(FUNC1(ff, 0, 0));

    static RRDSET *st = NULL;
    static RRDDIM *rd = NULL;

    if(FUNC11(!st)) {
        st = FUNC6(
                "system"
                , "entropy"
                , NULL
                , "entropy"
                , NULL
                , "Available Entropy"
                , "entropy"
                , PLUGIN_PROC_NAME
                , "/proc/sys/kernel/random/entropy_avail"
                , NETDATA_CHART_PRIO_SYSTEM_ENTROPY
                , update_every
                , RRDSET_TYPE_LINE
        );

        rd = FUNC4(st, "entropy", NULL, 1, 1, RRD_ALGORITHM_ABSOLUTE);
    }
    else FUNC8(st);

    FUNC5(st, rd, entropy);
    FUNC7(st);

    return 0;
}