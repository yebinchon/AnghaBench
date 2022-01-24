#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usec_t ;
typedef  int /*<<< orphan*/  procfile ;
struct TYPE_2__ {int /*<<< orphan*/  filename; } ;
typedef  int /*<<< orphan*/  RRDSET ;
typedef  int /*<<< orphan*/  RRDDIM ;

/* Variables and functions */
 scalar_t__ CONFIG_BOOLEAN_NO ; 
 int /*<<< orphan*/  FILENAME_MAX ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_MEM_KSM ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_MEM_KSM_RATIOS ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_MEM_KSM_SAVINGS ; 
 size_t PAGES_SHARED ; 
 size_t PAGES_SHARING ; 
 size_t PAGES_UNSHARED ; 
 size_t PAGES_VOLATILE ; 
 int /*<<< orphan*/  PLUGIN_PROC_MODULE_KSM_NAME ; 
 int /*<<< orphan*/  PLUGIN_PROC_NAME ; 
 int /*<<< orphan*/  PROCFILE_FLAG_DEFAULT ; 
 int /*<<< orphan*/  RRDSET_TYPE_AREA ; 
 int /*<<< orphan*/  RRDSET_TYPE_LINE ; 
 int /*<<< orphan*/  RRD_ALGORITHM_ABSOLUTE ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netdata_configured_host_prefix ; 
 scalar_t__ netdata_zero_metrics_enabled ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long long) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 unsigned long long FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 
 TYPE_1__* values ; 

int FUNC13(int update_every, usec_t dt) {
    (void)dt;
    static procfile *ff_pages_shared = NULL, *ff_pages_sharing = NULL, *ff_pages_unshared = NULL, *ff_pages_volatile = NULL/*, *ff_pages_to_scan = NULL*/;
    static unsigned long page_size = 0;

    if(FUNC12(page_size == 0))
        page_size = (unsigned long)FUNC11(_SC_PAGESIZE);

    if(FUNC12(!ff_pages_shared)) {
        FUNC9(values[PAGES_SHARED].filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, "/sys/kernel/mm/ksm/pages_shared");
        FUNC9(values[PAGES_SHARED].filename, FILENAME_MAX, "%s", FUNC0("plugin:proc:/sys/kernel/mm/ksm", "/sys/kernel/mm/ksm/pages_shared", values[PAGES_SHARED].filename));
        ff_pages_shared = FUNC2(values[PAGES_SHARED].filename, " \t:", PROCFILE_FLAG_DEFAULT);
    }

    if(FUNC12(!ff_pages_sharing)) {
        FUNC9(values[PAGES_SHARING].filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, "/sys/kernel/mm/ksm/pages_sharing");
        FUNC9(values[PAGES_SHARING].filename, FILENAME_MAX, "%s", FUNC0("plugin:proc:/sys/kernel/mm/ksm", "/sys/kernel/mm/ksm/pages_sharing", values[PAGES_SHARING].filename));
        ff_pages_sharing = FUNC2(values[PAGES_SHARING].filename, " \t:", PROCFILE_FLAG_DEFAULT);
    }

    if(FUNC12(!ff_pages_unshared)) {
        FUNC9(values[PAGES_UNSHARED].filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, "/sys/kernel/mm/ksm/pages_unshared");
        FUNC9(values[PAGES_UNSHARED].filename, FILENAME_MAX, "%s", FUNC0("plugin:proc:/sys/kernel/mm/ksm", "/sys/kernel/mm/ksm/pages_unshared", values[PAGES_UNSHARED].filename));
        ff_pages_unshared = FUNC2(values[PAGES_UNSHARED].filename, " \t:", PROCFILE_FLAG_DEFAULT);
    }

    if(FUNC12(!ff_pages_volatile)) {
        FUNC9(values[PAGES_VOLATILE].filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, "/sys/kernel/mm/ksm/pages_volatile");
        FUNC9(values[PAGES_VOLATILE].filename, FILENAME_MAX, "%s", FUNC0("plugin:proc:/sys/kernel/mm/ksm", "/sys/kernel/mm/ksm/pages_volatile", values[PAGES_VOLATILE].filename));
        ff_pages_volatile = FUNC2(values[PAGES_VOLATILE].filename, " \t:", PROCFILE_FLAG_DEFAULT);
    }

    //if(unlikely(!ff_pages_to_scan)) {
    //    snprintfz(values[PAGES_TO_SCAN].filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, "/sys/kernel/mm/ksm/pages_to_scan");
    //    snprintfz(values[PAGES_TO_SCAN].filename, FILENAME_MAX, "%s", config_get("plugin:proc:/sys/kernel/mm/ksm", "/sys/kernel/mm/ksm/pages_to_scan", values[PAGES_TO_SCAN].filename));
    //    ff_pages_to_scan = procfile_open(values[PAGES_TO_SCAN].filename, " \t:", PROCFILE_FLAG_DEFAULT);
    //}

    if(FUNC12(!ff_pages_shared || !ff_pages_sharing || !ff_pages_unshared || !ff_pages_volatile /*|| !ff_pages_to_scan */))
        return 1;

    unsigned long long pages_shared = 0, pages_sharing = 0, pages_unshared = 0, pages_volatile = 0, /*pages_to_scan = 0,*/ offered = 0, saved = 0;

    ff_pages_shared = FUNC3(ff_pages_shared);
    if(FUNC12(!ff_pages_shared)) return 0; // we return 0, so that we will retry to open it next time
    pages_shared = FUNC10(FUNC1(ff_pages_shared, 0, 0));

    ff_pages_sharing = FUNC3(ff_pages_sharing);
    if(FUNC12(!ff_pages_sharing)) return 0; // we return 0, so that we will retry to open it next time
    pages_sharing = FUNC10(FUNC1(ff_pages_sharing, 0, 0));

    ff_pages_unshared = FUNC3(ff_pages_unshared);
    if(FUNC12(!ff_pages_unshared)) return 0; // we return 0, so that we will retry to open it next time
    pages_unshared = FUNC10(FUNC1(ff_pages_unshared, 0, 0));

    ff_pages_volatile = FUNC3(ff_pages_volatile);
    if(FUNC12(!ff_pages_volatile)) return 0; // we return 0, so that we will retry to open it next time
    pages_volatile = FUNC10(FUNC1(ff_pages_volatile, 0, 0));

    //ff_pages_to_scan = procfile_readall(ff_pages_to_scan);
    //if(unlikely(!ff_pages_to_scan)) return 0; // we return 0, so that we will retry to open it next time
    //pages_to_scan = str2ull(procfile_lineword(ff_pages_to_scan, 0, 0));

    offered = pages_sharing + pages_shared + pages_unshared + pages_volatile;
    saved = pages_sharing;

    if(FUNC12(!offered /*|| !pages_to_scan*/ && netdata_zero_metrics_enabled == CONFIG_BOOLEAN_NO)) return 0;

    // --------------------------------------------------------------------

    {
        static RRDSET *st_mem_ksm = NULL;
        static RRDDIM *rd_shared = NULL, *rd_unshared = NULL, *rd_sharing = NULL, *rd_volatile = NULL/*, *rd_to_scan = NULL*/;

        if (FUNC12(!st_mem_ksm)) {
            st_mem_ksm = FUNC6(
                    "mem"
                    , "ksm"
                    , NULL
                    , "ksm"
                    , NULL
                    , "Kernel Same Page Merging"
                    , "MiB"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_KSM_NAME
                    , NETDATA_CHART_PRIO_MEM_KSM
                    , update_every
                    , RRDSET_TYPE_AREA
            );

            rd_shared   = FUNC4(st_mem_ksm, "shared",   NULL,      1, 1024 * 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_unshared = FUNC4(st_mem_ksm, "unshared", NULL,     -1, 1024 * 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_sharing  = FUNC4(st_mem_ksm, "sharing",  NULL,      1, 1024 * 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_volatile = FUNC4(st_mem_ksm, "volatile", NULL,     -1, 1024 * 1024, RRD_ALGORITHM_ABSOLUTE);
            //rd_to_scan  = rrddim_add(st_mem_ksm, "to_scan", "to scan", -1, 1024 * 1024, RRD_ALGORITHM_ABSOLUTE);
        }
        else
            FUNC8(st_mem_ksm);

        FUNC5(st_mem_ksm, rd_shared,   pages_shared   * page_size);
        FUNC5(st_mem_ksm, rd_unshared, pages_unshared * page_size);
        FUNC5(st_mem_ksm, rd_sharing,  pages_sharing  * page_size);
        FUNC5(st_mem_ksm, rd_volatile, pages_volatile * page_size);
        //rrddim_set_by_pointer(st_mem_ksm, rd_to_scan,  pages_to_scan  * page_size);

        FUNC7(st_mem_ksm);
    }

    // --------------------------------------------------------------------

    {
        static RRDSET *st_mem_ksm_savings = NULL;
        static RRDDIM *rd_savings = NULL, *rd_offered = NULL;

        if (FUNC12(!st_mem_ksm_savings)) {
            st_mem_ksm_savings = FUNC6(
                    "mem"
                    , "ksm_savings"
                    , NULL
                    , "ksm"
                    , NULL
                    , "Kernel Same Page Merging Savings"
                    , "MiB"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_KSM_NAME
                    , NETDATA_CHART_PRIO_MEM_KSM_SAVINGS
                    , update_every
                    , RRDSET_TYPE_AREA
            );

            rd_savings = FUNC4(st_mem_ksm_savings, "savings", NULL, -1, 1024 * 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_offered = FUNC4(st_mem_ksm_savings, "offered", NULL,  1, 1024 * 1024, RRD_ALGORITHM_ABSOLUTE);
        }
        else
            FUNC8(st_mem_ksm_savings);

        FUNC5(st_mem_ksm_savings, rd_savings, saved * page_size);
        FUNC5(st_mem_ksm_savings, rd_offered, offered * page_size);

        FUNC7(st_mem_ksm_savings);
    }

    // --------------------------------------------------------------------

    {
        static RRDSET *st_mem_ksm_ratios = NULL;
        static RRDDIM *rd_savings = NULL;

        if (FUNC12(!st_mem_ksm_ratios)) {
            st_mem_ksm_ratios = FUNC6(
                    "mem"
                    , "ksm_ratios"
                    , NULL
                    , "ksm"
                    , NULL
                    , "Kernel Same Page Merging Effectiveness"
                    , "percentage"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_KSM_NAME
                    , NETDATA_CHART_PRIO_MEM_KSM_RATIOS
                    , update_every
                    , RRDSET_TYPE_LINE
            );

            rd_savings = FUNC4(st_mem_ksm_ratios, "savings", NULL, 1, 10000, RRD_ALGORITHM_ABSOLUTE);
        }
        else
            FUNC8(st_mem_ksm_ratios);

        FUNC5(st_mem_ksm_ratios, rd_savings, offered ? (saved * 1000000) / offered : 0);

        FUNC7(st_mem_ksm_ratios);
    }

    return 0;
}