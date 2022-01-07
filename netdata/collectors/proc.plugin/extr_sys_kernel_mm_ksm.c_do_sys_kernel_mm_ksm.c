
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usec_t ;
typedef int procfile ;
struct TYPE_2__ {int filename; } ;
typedef int RRDSET ;
typedef int RRDDIM ;


 scalar_t__ CONFIG_BOOLEAN_NO ;
 int FILENAME_MAX ;
 int NETDATA_CHART_PRIO_MEM_KSM ;
 int NETDATA_CHART_PRIO_MEM_KSM_RATIOS ;
 int NETDATA_CHART_PRIO_MEM_KSM_SAVINGS ;
 size_t PAGES_SHARED ;
 size_t PAGES_SHARING ;
 size_t PAGES_UNSHARED ;
 size_t PAGES_VOLATILE ;
 int PLUGIN_PROC_MODULE_KSM_NAME ;
 int PLUGIN_PROC_NAME ;
 int PROCFILE_FLAG_DEFAULT ;
 int RRDSET_TYPE_AREA ;
 int RRDSET_TYPE_LINE ;
 int RRD_ALGORITHM_ABSOLUTE ;
 int _SC_PAGESIZE ;
 int config_get (char*,char*,int ) ;
 int netdata_configured_host_prefix ;
 scalar_t__ netdata_zero_metrics_enabled ;
 int procfile_lineword (int *,int ,int ) ;
 int * procfile_open (int ,char*,int ) ;
 int * procfile_readall (int *) ;
 int * rrddim_add (int *,char*,int *,int,int,int ) ;
 int rrddim_set_by_pointer (int *,int *,unsigned long long) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,int *,char*,char*,int ,int ,int ,int,int ) ;
 int rrdset_done (int *) ;
 int rrdset_next (int *) ;
 int snprintfz (int ,int ,char*,int ,...) ;
 unsigned long long str2ull (int ) ;
 scalar_t__ sysconf (int ) ;
 scalar_t__ unlikely (int) ;
 TYPE_1__* values ;

int do_sys_kernel_mm_ksm(int update_every, usec_t dt) {
    (void)dt;
    static procfile *ff_pages_shared = ((void*)0), *ff_pages_sharing = ((void*)0), *ff_pages_unshared = ((void*)0), *ff_pages_volatile = ((void*)0) ;
    static unsigned long page_size = 0;

    if(unlikely(page_size == 0))
        page_size = (unsigned long)sysconf(_SC_PAGESIZE);

    if(unlikely(!ff_pages_shared)) {
        snprintfz(values[PAGES_SHARED].filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, "/sys/kernel/mm/ksm/pages_shared");
        snprintfz(values[PAGES_SHARED].filename, FILENAME_MAX, "%s", config_get("plugin:proc:/sys/kernel/mm/ksm", "/sys/kernel/mm/ksm/pages_shared", values[PAGES_SHARED].filename));
        ff_pages_shared = procfile_open(values[PAGES_SHARED].filename, " \t:", PROCFILE_FLAG_DEFAULT);
    }

    if(unlikely(!ff_pages_sharing)) {
        snprintfz(values[PAGES_SHARING].filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, "/sys/kernel/mm/ksm/pages_sharing");
        snprintfz(values[PAGES_SHARING].filename, FILENAME_MAX, "%s", config_get("plugin:proc:/sys/kernel/mm/ksm", "/sys/kernel/mm/ksm/pages_sharing", values[PAGES_SHARING].filename));
        ff_pages_sharing = procfile_open(values[PAGES_SHARING].filename, " \t:", PROCFILE_FLAG_DEFAULT);
    }

    if(unlikely(!ff_pages_unshared)) {
        snprintfz(values[PAGES_UNSHARED].filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, "/sys/kernel/mm/ksm/pages_unshared");
        snprintfz(values[PAGES_UNSHARED].filename, FILENAME_MAX, "%s", config_get("plugin:proc:/sys/kernel/mm/ksm", "/sys/kernel/mm/ksm/pages_unshared", values[PAGES_UNSHARED].filename));
        ff_pages_unshared = procfile_open(values[PAGES_UNSHARED].filename, " \t:", PROCFILE_FLAG_DEFAULT);
    }

    if(unlikely(!ff_pages_volatile)) {
        snprintfz(values[PAGES_VOLATILE].filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, "/sys/kernel/mm/ksm/pages_volatile");
        snprintfz(values[PAGES_VOLATILE].filename, FILENAME_MAX, "%s", config_get("plugin:proc:/sys/kernel/mm/ksm", "/sys/kernel/mm/ksm/pages_volatile", values[PAGES_VOLATILE].filename));
        ff_pages_volatile = procfile_open(values[PAGES_VOLATILE].filename, " \t:", PROCFILE_FLAG_DEFAULT);
    }







    if(unlikely(!ff_pages_shared || !ff_pages_sharing || !ff_pages_unshared || !ff_pages_volatile ))
        return 1;

    unsigned long long pages_shared = 0, pages_sharing = 0, pages_unshared = 0, pages_volatile = 0, offered = 0, saved = 0;

    ff_pages_shared = procfile_readall(ff_pages_shared);
    if(unlikely(!ff_pages_shared)) return 0;
    pages_shared = str2ull(procfile_lineword(ff_pages_shared, 0, 0));

    ff_pages_sharing = procfile_readall(ff_pages_sharing);
    if(unlikely(!ff_pages_sharing)) return 0;
    pages_sharing = str2ull(procfile_lineword(ff_pages_sharing, 0, 0));

    ff_pages_unshared = procfile_readall(ff_pages_unshared);
    if(unlikely(!ff_pages_unshared)) return 0;
    pages_unshared = str2ull(procfile_lineword(ff_pages_unshared, 0, 0));

    ff_pages_volatile = procfile_readall(ff_pages_volatile);
    if(unlikely(!ff_pages_volatile)) return 0;
    pages_volatile = str2ull(procfile_lineword(ff_pages_volatile, 0, 0));





    offered = pages_sharing + pages_shared + pages_unshared + pages_volatile;
    saved = pages_sharing;

    if(unlikely(!offered && netdata_zero_metrics_enabled == CONFIG_BOOLEAN_NO)) return 0;



    {
        static RRDSET *st_mem_ksm = ((void*)0);
        static RRDDIM *rd_shared = ((void*)0), *rd_unshared = ((void*)0), *rd_sharing = ((void*)0), *rd_volatile = ((void*)0) ;

        if (unlikely(!st_mem_ksm)) {
            st_mem_ksm = rrdset_create_localhost(
                    "mem"
                    , "ksm"
                    , ((void*)0)
                    , "ksm"
                    , ((void*)0)
                    , "Kernel Same Page Merging"
                    , "MiB"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_KSM_NAME
                    , NETDATA_CHART_PRIO_MEM_KSM
                    , update_every
                    , RRDSET_TYPE_AREA
            );

            rd_shared = rrddim_add(st_mem_ksm, "shared", ((void*)0), 1, 1024 * 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_unshared = rrddim_add(st_mem_ksm, "unshared", ((void*)0), -1, 1024 * 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_sharing = rrddim_add(st_mem_ksm, "sharing", ((void*)0), 1, 1024 * 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_volatile = rrddim_add(st_mem_ksm, "volatile", ((void*)0), -1, 1024 * 1024, RRD_ALGORITHM_ABSOLUTE);

        }
        else
            rrdset_next(st_mem_ksm);

        rrddim_set_by_pointer(st_mem_ksm, rd_shared, pages_shared * page_size);
        rrddim_set_by_pointer(st_mem_ksm, rd_unshared, pages_unshared * page_size);
        rrddim_set_by_pointer(st_mem_ksm, rd_sharing, pages_sharing * page_size);
        rrddim_set_by_pointer(st_mem_ksm, rd_volatile, pages_volatile * page_size);


        rrdset_done(st_mem_ksm);
    }



    {
        static RRDSET *st_mem_ksm_savings = ((void*)0);
        static RRDDIM *rd_savings = ((void*)0), *rd_offered = ((void*)0);

        if (unlikely(!st_mem_ksm_savings)) {
            st_mem_ksm_savings = rrdset_create_localhost(
                    "mem"
                    , "ksm_savings"
                    , ((void*)0)
                    , "ksm"
                    , ((void*)0)
                    , "Kernel Same Page Merging Savings"
                    , "MiB"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_KSM_NAME
                    , NETDATA_CHART_PRIO_MEM_KSM_SAVINGS
                    , update_every
                    , RRDSET_TYPE_AREA
            );

            rd_savings = rrddim_add(st_mem_ksm_savings, "savings", ((void*)0), -1, 1024 * 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_offered = rrddim_add(st_mem_ksm_savings, "offered", ((void*)0), 1, 1024 * 1024, RRD_ALGORITHM_ABSOLUTE);
        }
        else
            rrdset_next(st_mem_ksm_savings);

        rrddim_set_by_pointer(st_mem_ksm_savings, rd_savings, saved * page_size);
        rrddim_set_by_pointer(st_mem_ksm_savings, rd_offered, offered * page_size);

        rrdset_done(st_mem_ksm_savings);
    }



    {
        static RRDSET *st_mem_ksm_ratios = ((void*)0);
        static RRDDIM *rd_savings = ((void*)0);

        if (unlikely(!st_mem_ksm_ratios)) {
            st_mem_ksm_ratios = rrdset_create_localhost(
                    "mem"
                    , "ksm_ratios"
                    , ((void*)0)
                    , "ksm"
                    , ((void*)0)
                    , "Kernel Same Page Merging Effectiveness"
                    , "percentage"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_KSM_NAME
                    , NETDATA_CHART_PRIO_MEM_KSM_RATIOS
                    , update_every
                    , RRDSET_TYPE_LINE
            );

            rd_savings = rrddim_add(st_mem_ksm_ratios, "savings", ((void*)0), 1, 10000, RRD_ALGORITHM_ABSOLUTE);
        }
        else
            rrdset_next(st_mem_ksm_ratios);

        rrddim_set_by_pointer(st_mem_ksm_ratios, rd_savings, offered ? (saved * 1000000) / offered : 0);

        rrdset_done(st_mem_ksm_ratios);
    }

    return 0;
}
