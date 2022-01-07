
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int usec_t ;
typedef int procfile ;
struct TYPE_3__ {int flags; } ;
typedef int RRDSET ;
typedef int RRDDIM ;
typedef TYPE_1__ ARL_ENTRY ;
typedef int ARL_BASE ;


 int ARL_ENTRY_FLAG_FOUND ;
 int CONFIG_BOOLEAN_AUTO ;
 int CONFIG_BOOLEAN_YES ;
 int CONFIG_SECTION_PLUGIN_PROC_MEMINFO ;
 int FILENAME_MAX ;
 scalar_t__ NETDATA_CHART_PRIO_MEM_HUGEPAGES ;
 scalar_t__ NETDATA_CHART_PRIO_MEM_HW ;
 scalar_t__ NETDATA_CHART_PRIO_MEM_KERNEL ;
 scalar_t__ NETDATA_CHART_PRIO_MEM_SLAB ;
 scalar_t__ NETDATA_CHART_PRIO_MEM_SYSTEM_AVAILABLE ;
 scalar_t__ NETDATA_CHART_PRIO_MEM_SYSTEM_COMMITTED ;
 scalar_t__ NETDATA_CHART_PRIO_SYSTEM_RAM ;
 scalar_t__ NETDATA_CHART_PRIO_SYSTEM_SWAP ;
 int PLUGIN_PROC_MODULE_MEMINFO_NAME ;
 int PLUGIN_PROC_NAME ;
 int PROCFILE_FLAG_DEFAULT ;
 int RRDSET_FLAG_DETAIL ;
 int RRDSET_TYPE_AREA ;
 int RRDSET_TYPE_LINE ;
 int RRDSET_TYPE_STACKED ;
 int RRD_ALGORITHM_ABSOLUTE ;
 int arl_begin (int *) ;
 int arl_check (int *,int ,int ) ;
 int * arl_create (char*,int *,int) ;
 TYPE_1__* arl_expect (int *,char*,unsigned long long*) ;
 int config_get (int ,char*,char*) ;
 int config_get_boolean (int ,char*,int) ;
 int config_get_boolean_ondemand (int ,char*,int) ;
 int netdata_configured_host_prefix ;
 int netdata_zero_metrics_enabled ;
 size_t procfile_lines (int *) ;
 int procfile_lineword (int *,size_t,int) ;
 size_t procfile_linewords (int *,size_t) ;
 int * procfile_open (int ,char*,int ) ;
 int * procfile_readall (int *) ;
 int * rrddim_add (int *,char*,char*,int,int,int ) ;
 int rrddim_set_by_pointer (int *,int *,unsigned long long) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,int *,char*,char*,int ,int ,scalar_t__,int,int ) ;
 int rrdset_done (int *) ;
 int rrdset_flag_set (int *,int ) ;
 int rrdset_next (int *) ;
 int snprintfz (char*,int ,char*,int ,char*) ;
 scalar_t__ unlikely (int) ;

int do_proc_meminfo(int update_every, usec_t dt) {
    (void)dt;

    static procfile *ff = ((void*)0);
    static int do_ram = -1, do_swap = -1, do_hwcorrupt = -1, do_committed = -1, do_writeback = -1, do_kernel = -1, do_slab = -1, do_hugepages = -1, do_transparent_hugepages = -1;

    static ARL_BASE *arl_base = ((void*)0);
    static ARL_ENTRY *arl_hwcorrupted = ((void*)0), *arl_memavailable = ((void*)0);

    static unsigned long long
            MemTotal = 0,
            MemFree = 0,
            MemAvailable = 0,
            Buffers = 0,
            Cached = 0,
            SwapTotal = 0,
            SwapFree = 0,
            Dirty = 0,
            Writeback = 0,



            Slab = 0,
            SReclaimable = 0,
            SUnreclaim = 0,
            KernelStack = 0,
            PageTables = 0,
            NFS_Unstable = 0,
            Bounce = 0,
            WritebackTmp = 0,

            Committed_AS = 0,

            VmallocUsed = 0,

            AnonHugePages = 0,
            ShmemHugePages = 0,
            HugePages_Total = 0,
            HugePages_Free = 0,
            HugePages_Rsvd = 0,
            HugePages_Surp = 0,
            Hugepagesize = 0,


            HardwareCorrupted = 0;

    if(unlikely(!arl_base)) {
        do_ram = config_get_boolean(CONFIG_SECTION_PLUGIN_PROC_MEMINFO, "system ram", 1);
        do_swap = config_get_boolean_ondemand(CONFIG_SECTION_PLUGIN_PROC_MEMINFO, "system swap", CONFIG_BOOLEAN_AUTO);
        do_hwcorrupt = config_get_boolean_ondemand(CONFIG_SECTION_PLUGIN_PROC_MEMINFO, "hardware corrupted ECC", CONFIG_BOOLEAN_AUTO);
        do_committed = config_get_boolean(CONFIG_SECTION_PLUGIN_PROC_MEMINFO, "committed memory", 1);
        do_writeback = config_get_boolean(CONFIG_SECTION_PLUGIN_PROC_MEMINFO, "writeback memory", 1);
        do_kernel = config_get_boolean(CONFIG_SECTION_PLUGIN_PROC_MEMINFO, "kernel memory", 1);
        do_slab = config_get_boolean(CONFIG_SECTION_PLUGIN_PROC_MEMINFO, "slab memory", 1);
        do_hugepages = config_get_boolean_ondemand(CONFIG_SECTION_PLUGIN_PROC_MEMINFO, "hugepages", CONFIG_BOOLEAN_AUTO);
        do_transparent_hugepages = config_get_boolean_ondemand(CONFIG_SECTION_PLUGIN_PROC_MEMINFO, "transparent hugepages", CONFIG_BOOLEAN_AUTO);

        arl_base = arl_create("meminfo", ((void*)0), 60);
        arl_expect(arl_base, "MemTotal", &MemTotal);
        arl_expect(arl_base, "MemFree", &MemFree);
        arl_memavailable = arl_expect(arl_base, "MemAvailable", &MemAvailable);
        arl_expect(arl_base, "Buffers", &Buffers);
        arl_expect(arl_base, "Cached", &Cached);
        arl_expect(arl_base, "SwapTotal", &SwapTotal);
        arl_expect(arl_base, "SwapFree", &SwapFree);
        arl_expect(arl_base, "Dirty", &Dirty);
        arl_expect(arl_base, "Writeback", &Writeback);



        arl_expect(arl_base, "Slab", &Slab);
        arl_expect(arl_base, "SReclaimable", &SReclaimable);
        arl_expect(arl_base, "SUnreclaim", &SUnreclaim);
        arl_expect(arl_base, "KernelStack", &KernelStack);
        arl_expect(arl_base, "PageTables", &PageTables);
        arl_expect(arl_base, "NFS_Unstable", &NFS_Unstable);
        arl_expect(arl_base, "Bounce", &Bounce);
        arl_expect(arl_base, "WritebackTmp", &WritebackTmp);

        arl_expect(arl_base, "Committed_AS", &Committed_AS);

        arl_expect(arl_base, "VmallocUsed", &VmallocUsed);

        arl_hwcorrupted = arl_expect(arl_base, "HardwareCorrupted", &HardwareCorrupted);
        arl_expect(arl_base, "AnonHugePages", &AnonHugePages);
        arl_expect(arl_base, "ShmemHugePages", &ShmemHugePages);
        arl_expect(arl_base, "HugePages_Total", &HugePages_Total);
        arl_expect(arl_base, "HugePages_Free", &HugePages_Free);
        arl_expect(arl_base, "HugePages_Rsvd", &HugePages_Rsvd);
        arl_expect(arl_base, "HugePages_Surp", &HugePages_Surp);
        arl_expect(arl_base, "Hugepagesize", &Hugepagesize);


    }

    if(unlikely(!ff)) {
        char filename[FILENAME_MAX + 1];
        snprintfz(filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, "/proc/meminfo");
        ff = procfile_open(config_get(CONFIG_SECTION_PLUGIN_PROC_MEMINFO, "filename to monitor", filename), " \t:", PROCFILE_FLAG_DEFAULT);
        if(unlikely(!ff))
            return 1;
    }

    ff = procfile_readall(ff);
    if(unlikely(!ff))
        return 0;

    size_t lines = procfile_lines(ff), l;

    arl_begin(arl_base);

    for(l = 0; l < lines ;l++) {
        size_t words = procfile_linewords(ff, l);
        if(unlikely(words < 2)) continue;

        if(unlikely(arl_check(arl_base,
                procfile_lineword(ff, l, 0),
                procfile_lineword(ff, l, 1)))) break;
    }




    unsigned long long MemCached = Cached + SReclaimable;
    unsigned long long MemUsed = MemTotal - MemFree - MemCached - Buffers;

    if(do_ram) {
        {
            static RRDSET *st_system_ram = ((void*)0);
            static RRDDIM *rd_free = ((void*)0), *rd_used = ((void*)0), *rd_cached = ((void*)0), *rd_buffers = ((void*)0);

            if(unlikely(!st_system_ram)) {
                st_system_ram = rrdset_create_localhost(
                        "system"
                        , "ram"
                        , ((void*)0)
                        , "ram"
                        , ((void*)0)
                        , "System RAM"
                        , "MiB"
                        , PLUGIN_PROC_NAME
                        , PLUGIN_PROC_MODULE_MEMINFO_NAME
                        , NETDATA_CHART_PRIO_SYSTEM_RAM
                        , update_every
                        , RRDSET_TYPE_STACKED
                );

                rd_free = rrddim_add(st_system_ram, "free", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
                rd_used = rrddim_add(st_system_ram, "used", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
                rd_cached = rrddim_add(st_system_ram, "cached", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
                rd_buffers = rrddim_add(st_system_ram, "buffers", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
            }
            else rrdset_next(st_system_ram);

            rrddim_set_by_pointer(st_system_ram, rd_free, MemFree);
            rrddim_set_by_pointer(st_system_ram, rd_used, MemUsed);
            rrddim_set_by_pointer(st_system_ram, rd_cached, MemCached);
            rrddim_set_by_pointer(st_system_ram, rd_buffers, Buffers);

            rrdset_done(st_system_ram);
        }

        if(arl_memavailable->flags & ARL_ENTRY_FLAG_FOUND) {
            static RRDSET *st_mem_available = ((void*)0);
            static RRDDIM *rd_avail = ((void*)0);

            if(unlikely(!st_mem_available)) {
                st_mem_available = rrdset_create_localhost(
                        "mem"
                        , "available"
                        , ((void*)0)
                        , "system"
                        , ((void*)0)
                        , "Available RAM for applications"
                        , "MiB"
                        , PLUGIN_PROC_NAME
                        , PLUGIN_PROC_MODULE_MEMINFO_NAME
                        , NETDATA_CHART_PRIO_MEM_SYSTEM_AVAILABLE
                        , update_every
                        , RRDSET_TYPE_AREA
                );

                rd_avail = rrddim_add(st_mem_available, "MemAvailable", "avail", 1, 1024, RRD_ALGORITHM_ABSOLUTE);
            }
            else rrdset_next(st_mem_available);

            rrddim_set_by_pointer(st_mem_available, rd_avail, MemAvailable);

            rrdset_done(st_mem_available);
        }
    }



    unsigned long long SwapUsed = SwapTotal - SwapFree;

    if(do_swap == CONFIG_BOOLEAN_YES || (do_swap == CONFIG_BOOLEAN_AUTO &&
                                         (SwapTotal || SwapUsed || SwapFree ||
                                          netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))) {
        do_swap = CONFIG_BOOLEAN_YES;

        static RRDSET *st_system_swap = ((void*)0);
        static RRDDIM *rd_free = ((void*)0), *rd_used = ((void*)0);

        if(unlikely(!st_system_swap)) {
            st_system_swap = rrdset_create_localhost(
                    "system"
                    , "swap"
                    , ((void*)0)
                    , "swap"
                    , ((void*)0)
                    , "System Swap"
                    , "MiB"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_MEMINFO_NAME
                    , NETDATA_CHART_PRIO_SYSTEM_SWAP
                    , update_every
                    , RRDSET_TYPE_STACKED
            );

            rrdset_flag_set(st_system_swap, RRDSET_FLAG_DETAIL);

            rd_free = rrddim_add(st_system_swap, "free", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_used = rrddim_add(st_system_swap, "used", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
        }
        else rrdset_next(st_system_swap);

        rrddim_set_by_pointer(st_system_swap, rd_used, SwapUsed);
        rrddim_set_by_pointer(st_system_swap, rd_free, SwapFree);

        rrdset_done(st_system_swap);
    }



    if(arl_hwcorrupted->flags & ARL_ENTRY_FLAG_FOUND &&
       (do_hwcorrupt == CONFIG_BOOLEAN_YES || (do_hwcorrupt == CONFIG_BOOLEAN_AUTO &&
                                               (HardwareCorrupted > 0 ||
                                                netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES)))) {
        do_hwcorrupt = CONFIG_BOOLEAN_YES;

        static RRDSET *st_mem_hwcorrupt = ((void*)0);
        static RRDDIM *rd_corrupted = ((void*)0);

        if(unlikely(!st_mem_hwcorrupt)) {
            st_mem_hwcorrupt = rrdset_create_localhost(
                    "mem"
                    , "hwcorrupt"
                    , ((void*)0)
                    , "ecc"
                    , ((void*)0)
                    , "Corrupted Memory, detected by ECC"
                    , "MiB"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_MEMINFO_NAME
                    , NETDATA_CHART_PRIO_MEM_HW
                    , update_every
                    , RRDSET_TYPE_LINE
            );

            rrdset_flag_set(st_mem_hwcorrupt, RRDSET_FLAG_DETAIL);

            rd_corrupted = rrddim_add(st_mem_hwcorrupt, "HardwareCorrupted", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
        }
        else rrdset_next(st_mem_hwcorrupt);

        rrddim_set_by_pointer(st_mem_hwcorrupt, rd_corrupted, HardwareCorrupted);

        rrdset_done(st_mem_hwcorrupt);
    }



    if(do_committed) {
        static RRDSET *st_mem_committed = ((void*)0);
        static RRDDIM *rd_committed = ((void*)0);

        if(unlikely(!st_mem_committed)) {
            st_mem_committed = rrdset_create_localhost(
                    "mem"
                    , "committed"
                    , ((void*)0)
                    , "system"
                    , ((void*)0)
                    , "Committed (Allocated) Memory"
                    , "MiB"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_MEMINFO_NAME
                    , NETDATA_CHART_PRIO_MEM_SYSTEM_COMMITTED
                    , update_every
                    , RRDSET_TYPE_AREA
            );

            rrdset_flag_set(st_mem_committed, RRDSET_FLAG_DETAIL);

            rd_committed = rrddim_add(st_mem_committed, "Committed_AS", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
        }
        else rrdset_next(st_mem_committed);

        rrddim_set_by_pointer(st_mem_committed, rd_committed, Committed_AS);

        rrdset_done(st_mem_committed);
    }



    if(do_writeback) {
        static RRDSET *st_mem_writeback = ((void*)0);
        static RRDDIM *rd_dirty = ((void*)0), *rd_writeback = ((void*)0), *rd_fusewriteback = ((void*)0), *rd_nfs_writeback = ((void*)0), *rd_bounce = ((void*)0);

        if(unlikely(!st_mem_writeback)) {
            st_mem_writeback = rrdset_create_localhost(
                    "mem"
                    , "writeback"
                    , ((void*)0)
                    , "kernel"
                    , ((void*)0)
                    , "Writeback Memory"
                    , "MiB"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_MEMINFO_NAME
                    , NETDATA_CHART_PRIO_MEM_KERNEL
                    , update_every
                    , RRDSET_TYPE_LINE
            );
            rrdset_flag_set(st_mem_writeback, RRDSET_FLAG_DETAIL);

            rd_dirty = rrddim_add(st_mem_writeback, "Dirty", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_writeback = rrddim_add(st_mem_writeback, "Writeback", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_fusewriteback = rrddim_add(st_mem_writeback, "FuseWriteback", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_nfs_writeback = rrddim_add(st_mem_writeback, "NfsWriteback", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_bounce = rrddim_add(st_mem_writeback, "Bounce", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
        }
        else rrdset_next(st_mem_writeback);

        rrddim_set_by_pointer(st_mem_writeback, rd_dirty, Dirty);
        rrddim_set_by_pointer(st_mem_writeback, rd_writeback, Writeback);
        rrddim_set_by_pointer(st_mem_writeback, rd_fusewriteback, WritebackTmp);
        rrddim_set_by_pointer(st_mem_writeback, rd_nfs_writeback, NFS_Unstable);
        rrddim_set_by_pointer(st_mem_writeback, rd_bounce, Bounce);

        rrdset_done(st_mem_writeback);
    }



    if(do_kernel) {
        static RRDSET *st_mem_kernel = ((void*)0);
        static RRDDIM *rd_slab = ((void*)0), *rd_kernelstack = ((void*)0), *rd_pagetables = ((void*)0), *rd_vmallocused = ((void*)0);

        if(unlikely(!st_mem_kernel)) {
            st_mem_kernel = rrdset_create_localhost(
                    "mem"
                    , "kernel"
                    , ((void*)0)
                    , "kernel"
                    , ((void*)0)
                    , "Memory Used by Kernel"
                    , "MiB"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_MEMINFO_NAME
                    , NETDATA_CHART_PRIO_MEM_KERNEL + 1
                    , update_every
                    , RRDSET_TYPE_STACKED
            );

            rrdset_flag_set(st_mem_kernel, RRDSET_FLAG_DETAIL);

            rd_slab = rrddim_add(st_mem_kernel, "Slab", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_kernelstack = rrddim_add(st_mem_kernel, "KernelStack", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_pagetables = rrddim_add(st_mem_kernel, "PageTables", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_vmallocused = rrddim_add(st_mem_kernel, "VmallocUsed", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
        }
        else rrdset_next(st_mem_kernel);

        rrddim_set_by_pointer(st_mem_kernel, rd_slab, Slab);
        rrddim_set_by_pointer(st_mem_kernel, rd_kernelstack, KernelStack);
        rrddim_set_by_pointer(st_mem_kernel, rd_pagetables, PageTables);
        rrddim_set_by_pointer(st_mem_kernel, rd_vmallocused, VmallocUsed);

        rrdset_done(st_mem_kernel);
    }



    if(do_slab) {
        static RRDSET *st_mem_slab = ((void*)0);
        static RRDDIM *rd_reclaimable = ((void*)0), *rd_unreclaimable = ((void*)0);

        if(unlikely(!st_mem_slab)) {
            st_mem_slab = rrdset_create_localhost(
                    "mem"
                    , "slab"
                    , ((void*)0)
                    , "slab"
                    , ((void*)0)
                    , "Reclaimable Kernel Memory"
                    , "MiB"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_MEMINFO_NAME
                    , NETDATA_CHART_PRIO_MEM_SLAB
                    , update_every
                    , RRDSET_TYPE_STACKED
            );

            rrdset_flag_set(st_mem_slab, RRDSET_FLAG_DETAIL);

            rd_reclaimable = rrddim_add(st_mem_slab, "reclaimable", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_unreclaimable = rrddim_add(st_mem_slab, "unreclaimable", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
        }
        else rrdset_next(st_mem_slab);

        rrddim_set_by_pointer(st_mem_slab, rd_reclaimable, SReclaimable);
        rrddim_set_by_pointer(st_mem_slab, rd_unreclaimable, SUnreclaim);

        rrdset_done(st_mem_slab);
    }



    if(do_hugepages == CONFIG_BOOLEAN_YES || (do_hugepages == CONFIG_BOOLEAN_AUTO &&
                                              ((Hugepagesize && HugePages_Total) ||
                                               netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))) {
        do_hugepages = CONFIG_BOOLEAN_YES;

        static RRDSET *st_mem_hugepages = ((void*)0);
        static RRDDIM *rd_used = ((void*)0), *rd_free = ((void*)0), *rd_rsvd = ((void*)0), *rd_surp = ((void*)0);

        if(unlikely(!st_mem_hugepages)) {
            st_mem_hugepages = rrdset_create_localhost(
                    "mem"
                    , "hugepages"
                    , ((void*)0)
                    , "hugepages"
                    , ((void*)0)
                    , "Dedicated HugePages Memory"
                    , "MiB"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_MEMINFO_NAME
                    , NETDATA_CHART_PRIO_MEM_HUGEPAGES + 1
                    , update_every
                    , RRDSET_TYPE_STACKED
            );

            rrdset_flag_set(st_mem_hugepages, RRDSET_FLAG_DETAIL);

            rd_free = rrddim_add(st_mem_hugepages, "free", ((void*)0), Hugepagesize, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_used = rrddim_add(st_mem_hugepages, "used", ((void*)0), Hugepagesize, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_surp = rrddim_add(st_mem_hugepages, "surplus", ((void*)0), Hugepagesize, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_rsvd = rrddim_add(st_mem_hugepages, "reserved", ((void*)0), Hugepagesize, 1024, RRD_ALGORITHM_ABSOLUTE);
        }
        else rrdset_next(st_mem_hugepages);

        rrddim_set_by_pointer(st_mem_hugepages, rd_used, HugePages_Total - HugePages_Free - HugePages_Rsvd);
        rrddim_set_by_pointer(st_mem_hugepages, rd_free, HugePages_Free);
        rrddim_set_by_pointer(st_mem_hugepages, rd_rsvd, HugePages_Rsvd);
        rrddim_set_by_pointer(st_mem_hugepages, rd_surp, HugePages_Surp);

        rrdset_done(st_mem_hugepages);
    }



    if(do_transparent_hugepages == CONFIG_BOOLEAN_YES || (do_transparent_hugepages == CONFIG_BOOLEAN_AUTO &&
                                                          (AnonHugePages ||
                                                           ShmemHugePages ||
                                                           netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))) {
        do_transparent_hugepages = CONFIG_BOOLEAN_YES;

        static RRDSET *st_mem_transparent_hugepages = ((void*)0);
        static RRDDIM *rd_anonymous = ((void*)0), *rd_shared = ((void*)0);

        if(unlikely(!st_mem_transparent_hugepages)) {
            st_mem_transparent_hugepages = rrdset_create_localhost(
                    "mem"
                    , "transparent_hugepages"
                    , ((void*)0)
                    , "hugepages"
                    , ((void*)0)
                    , "Transparent HugePages Memory"
                    , "MiB"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_MEMINFO_NAME
                    , NETDATA_CHART_PRIO_MEM_HUGEPAGES
                    , update_every
                    , RRDSET_TYPE_STACKED
            );

            rrdset_flag_set(st_mem_transparent_hugepages, RRDSET_FLAG_DETAIL);

            rd_anonymous = rrddim_add(st_mem_transparent_hugepages, "anonymous", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_shared = rrddim_add(st_mem_transparent_hugepages, "shmem", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
        }
        else rrdset_next(st_mem_transparent_hugepages);

        rrddim_set_by_pointer(st_mem_transparent_hugepages, rd_anonymous, AnonHugePages);
        rrddim_set_by_pointer(st_mem_transparent_hugepages, rd_shared, ShmemHugePages);

        rrdset_done(st_mem_transparent_hugepages);
    }

    return 0;
}
