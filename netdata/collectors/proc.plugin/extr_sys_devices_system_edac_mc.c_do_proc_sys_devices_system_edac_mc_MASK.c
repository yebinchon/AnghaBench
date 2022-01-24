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
struct mc {int ce_updated; scalar_t__ ce_count; int ue_updated; scalar_t__ ue_count; void* ue_rd; int /*<<< orphan*/  name; scalar_t__ ue_count_filename; struct mc* next; void* ce_rd; scalar_t__ ce_count_filename; void* ue_ff; void* ce_ff; } ;
typedef  scalar_t__ calculated_number ;
typedef  int /*<<< orphan*/  RRDSET ;

/* Variables and functions */
 int CONFIG_BOOLEAN_AUTO ; 
 int CONFIG_BOOLEAN_NO ; 
 int CONFIG_BOOLEAN_YES ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_MEM_HW_ECC_CE ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_MEM_HW_ECC_UE ; 
 int /*<<< orphan*/  PLUGIN_PROC_NAME ; 
 int /*<<< orphan*/  PROCFILE_FLAG_DEFAULT ; 
 int /*<<< orphan*/  RRDSET_TYPE_LINE ; 
 int /*<<< orphan*/  RRD_ALGORITHM_INCREMENTAL ; 
 int FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct mc* mc_root ; 
 int netdata_zero_metrics_enabled ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (void*) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 

int FUNC14(int update_every, usec_t dt) {
    (void)dt;

    if(FUNC13(mc_root == NULL)) {
        FUNC1();
        if(FUNC13(mc_root == NULL))
            return 1;
    }

    static int do_ce = -1, do_ue = -1;
    calculated_number ce_sum = 0, ue_sum = 0;
    struct mc *m;

    if(FUNC13(do_ce == -1)) {
        do_ce = FUNC0("plugin:proc:/sys/devices/system/edac/mc", "enable ECC memory correctable errors", CONFIG_BOOLEAN_AUTO);
        do_ue = FUNC0("plugin:proc:/sys/devices/system/edac/mc", "enable ECC memory uncorrectable errors", CONFIG_BOOLEAN_AUTO);
    }

    if(do_ce != CONFIG_BOOLEAN_NO) {
        for(m = mc_root; m; m = m->next) {
            if(m->ce_count_filename) {
                m->ce_updated = 0;

                if(FUNC13(!m->ce_ff)) {
                    m->ce_ff = FUNC5(m->ce_count_filename, " \t", PROCFILE_FLAG_DEFAULT);
                    if(FUNC13(!m->ce_ff))
                        continue;
                }

                m->ce_ff = FUNC6(m->ce_ff);
                if(FUNC13(!m->ce_ff || FUNC2(m->ce_ff) < 1 || FUNC4(m->ce_ff, 0) < 1))
                    continue;

                m->ce_count = FUNC12(FUNC3(m->ce_ff, 0, 0));
                ce_sum += m->ce_count;
                m->ce_updated = 1;
            }
        }
    }

    if(do_ue != CONFIG_BOOLEAN_NO) {
        for(m = mc_root; m; m = m->next) {
            if(m->ue_count_filename) {
                m->ue_updated = 0;

                if(FUNC13(!m->ue_ff)) {
                    m->ue_ff = FUNC5(m->ue_count_filename, " \t", PROCFILE_FLAG_DEFAULT);
                    if(FUNC13(!m->ue_ff))
                        continue;
                }

                m->ue_ff = FUNC6(m->ue_ff);
                if(FUNC13(!m->ue_ff || FUNC2(m->ue_ff) < 1 || FUNC4(m->ue_ff, 0) < 1))
                    continue;

                m->ue_count = FUNC12(FUNC3(m->ue_ff, 0, 0));
                ue_sum += m->ue_count;
                m->ue_updated = 1;
            }
        }
    }

    // --------------------------------------------------------------------

    if(do_ce == CONFIG_BOOLEAN_YES || (do_ce == CONFIG_BOOLEAN_AUTO &&
                                       (ce_sum > 0 || netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))) {
        do_ce = CONFIG_BOOLEAN_YES;

        static RRDSET *ce_st = NULL;

        if(FUNC13(!ce_st)) {
            ce_st = FUNC9(
                    "mem"
                    , "ecc_ce"
                    , NULL
                    , "ecc"
                    , NULL
                    , "ECC Memory Correctable Errors"
                    , "errors"
                    , PLUGIN_PROC_NAME
                    , "/sys/devices/system/edac/mc"
                    , NETDATA_CHART_PRIO_MEM_HW_ECC_CE
                    , update_every
                    , RRDSET_TYPE_LINE
            );
        }
        else
            FUNC11(ce_st);

        for(m = mc_root; m; m = m->next) {
            if (m->ce_count_filename && m->ce_updated) {
                if(FUNC13(!m->ce_rd))
                    m->ce_rd = FUNC7(ce_st, m->name, NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);

                FUNC8(ce_st, m->ce_rd, m->ce_count);
            }
        }

        FUNC10(ce_st);
    }

    // --------------------------------------------------------------------

    if(do_ue == CONFIG_BOOLEAN_YES || (do_ue == CONFIG_BOOLEAN_AUTO &&
                                       (ue_sum > 0 || netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))) {
        do_ue = CONFIG_BOOLEAN_YES;

        static RRDSET *ue_st = NULL;

        if(FUNC13(!ue_st)) {
            ue_st = FUNC9(
                    "mem"
                    , "ecc_ue"
                    , NULL
                    , "ecc"
                    , NULL
                    , "ECC Memory Uncorrectable Errors"
                    , "errors"
                    , PLUGIN_PROC_NAME
                    , "/sys/devices/system/edac/mc"
                    , NETDATA_CHART_PRIO_MEM_HW_ECC_UE
                    , update_every
                    , RRDSET_TYPE_LINE
            );
        }
        else
            FUNC11(ue_st);

        for(m = mc_root; m; m = m->next) {
            if (m->ue_count_filename && m->ue_updated) {
                if(FUNC13(!m->ue_rd))
                    m->ue_rd = FUNC7(ue_st, m->name, NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);

                FUNC8(ue_st, m->ue_rd, m->ue_count);
            }
        }

        FUNC10(ue_st);
    }

    return 0;
}