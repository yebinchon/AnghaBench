#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usec_t ;
typedef  int /*<<< orphan*/  procfile ;
struct TYPE_3__ {int flags; } ;
typedef  int /*<<< orphan*/  RRDSET ;
typedef  int /*<<< orphan*/  RRDDIM ;
typedef  TYPE_1__ ARL_ENTRY ;
typedef  int /*<<< orphan*/  ARL_BASE ;

/* Variables and functions */
 int ARL_ENTRY_FLAG_FOUND ; 
 int CONFIG_BOOLEAN_AUTO ; 
 int CONFIG_BOOLEAN_YES ; 
 int /*<<< orphan*/  CONFIG_SECTION_PLUGIN_PROC_MEMINFO ; 
 int /*<<< orphan*/  FILENAME_MAX ; 
 scalar_t__ NETDATA_CHART_PRIO_MEM_HUGEPAGES ; 
 scalar_t__ NETDATA_CHART_PRIO_MEM_HW ; 
 scalar_t__ NETDATA_CHART_PRIO_MEM_KERNEL ; 
 scalar_t__ NETDATA_CHART_PRIO_MEM_SLAB ; 
 scalar_t__ NETDATA_CHART_PRIO_MEM_SYSTEM_AVAILABLE ; 
 scalar_t__ NETDATA_CHART_PRIO_MEM_SYSTEM_COMMITTED ; 
 scalar_t__ NETDATA_CHART_PRIO_SYSTEM_RAM ; 
 scalar_t__ NETDATA_CHART_PRIO_SYSTEM_SWAP ; 
 int /*<<< orphan*/  PLUGIN_PROC_MODULE_MEMINFO_NAME ; 
 int /*<<< orphan*/  PLUGIN_PROC_NAME ; 
 int /*<<< orphan*/  PROCFILE_FLAG_DEFAULT ; 
 int /*<<< orphan*/  RRDSET_FLAG_DETAIL ; 
 int /*<<< orphan*/  RRDSET_TYPE_AREA ; 
 int /*<<< orphan*/  RRDSET_TYPE_LINE ; 
 int /*<<< orphan*/  RRDSET_TYPE_STACKED ; 
 int /*<<< orphan*/  RRD_ALGORITHM_ABSOLUTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,char*,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  netdata_configured_host_prefix ; 
 int netdata_zero_metrics_enabled ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,size_t,int) ; 
 size_t FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,char*,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long long) ; 
 int /*<<< orphan*/ * FUNC14 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC19 (int) ; 

int FUNC20(int update_every, usec_t dt) {
    (void)dt;

    static procfile *ff = NULL;
    static int do_ram = -1, do_swap = -1, do_hwcorrupt = -1, do_committed = -1, do_writeback = -1, do_kernel = -1, do_slab = -1, do_hugepages = -1, do_transparent_hugepages = -1;

    static ARL_BASE *arl_base = NULL;
    static ARL_ENTRY *arl_hwcorrupted = NULL, *arl_memavailable = NULL;

    static unsigned long long
            MemTotal = 0,
            MemFree = 0,
            MemAvailable = 0,
            Buffers = 0,
            Cached = 0,
            //SwapCached = 0,
            //Active = 0,
            //Inactive = 0,
            //ActiveAnon = 0,
            //InactiveAnon = 0,
            //ActiveFile = 0,
            //InactiveFile = 0,
            //Unevictable = 0,
            //Mlocked = 0,
            SwapTotal = 0,
            SwapFree = 0,
            Dirty = 0,
            Writeback = 0,
            //AnonPages = 0,
            //Mapped = 0,
            //Shmem = 0,
            Slab = 0,
            SReclaimable = 0,
            SUnreclaim = 0,
            KernelStack = 0,
            PageTables = 0,
            NFS_Unstable = 0,
            Bounce = 0,
            WritebackTmp = 0,
            //CommitLimit = 0,
            Committed_AS = 0,
            //VmallocTotal = 0,
            VmallocUsed = 0,
            //VmallocChunk = 0,
            AnonHugePages = 0,
            ShmemHugePages = 0,
            HugePages_Total = 0,
            HugePages_Free = 0,
            HugePages_Rsvd = 0,
            HugePages_Surp = 0,
            Hugepagesize = 0,
            //DirectMap4k = 0,
            //DirectMap2M = 0,
            HardwareCorrupted = 0;

    if(FUNC19(!arl_base)) {
        do_ram          = FUNC5(CONFIG_SECTION_PLUGIN_PROC_MEMINFO, "system ram", 1);
        do_swap         = FUNC6(CONFIG_SECTION_PLUGIN_PROC_MEMINFO, "system swap", CONFIG_BOOLEAN_AUTO);
        do_hwcorrupt    = FUNC6(CONFIG_SECTION_PLUGIN_PROC_MEMINFO, "hardware corrupted ECC", CONFIG_BOOLEAN_AUTO);
        do_committed    = FUNC5(CONFIG_SECTION_PLUGIN_PROC_MEMINFO, "committed memory", 1);
        do_writeback    = FUNC5(CONFIG_SECTION_PLUGIN_PROC_MEMINFO, "writeback memory", 1);
        do_kernel       = FUNC5(CONFIG_SECTION_PLUGIN_PROC_MEMINFO, "kernel memory", 1);
        do_slab         = FUNC5(CONFIG_SECTION_PLUGIN_PROC_MEMINFO, "slab memory", 1);
        do_hugepages    = FUNC6(CONFIG_SECTION_PLUGIN_PROC_MEMINFO, "hugepages", CONFIG_BOOLEAN_AUTO);
        do_transparent_hugepages = FUNC6(CONFIG_SECTION_PLUGIN_PROC_MEMINFO, "transparent hugepages", CONFIG_BOOLEAN_AUTO);

        arl_base = FUNC2("meminfo", NULL, 60);
        FUNC3(arl_base, "MemTotal", &MemTotal);
        FUNC3(arl_base, "MemFree", &MemFree);
        arl_memavailable = FUNC3(arl_base, "MemAvailable", &MemAvailable);
        FUNC3(arl_base, "Buffers", &Buffers);
        FUNC3(arl_base, "Cached", &Cached);
        //arl_expect(arl_base, "SwapCached", &SwapCached);
        //arl_expect(arl_base, "Active", &Active);
        //arl_expect(arl_base, "Inactive", &Inactive);
        //arl_expect(arl_base, "ActiveAnon", &ActiveAnon);
        //arl_expect(arl_base, "InactiveAnon", &InactiveAnon);
        //arl_expect(arl_base, "ActiveFile", &ActiveFile);
        //arl_expect(arl_base, "InactiveFile", &InactiveFile);
        //arl_expect(arl_base, "Unevictable", &Unevictable);
        //arl_expect(arl_base, "Mlocked", &Mlocked);
        FUNC3(arl_base, "SwapTotal", &SwapTotal);
        FUNC3(arl_base, "SwapFree", &SwapFree);
        FUNC3(arl_base, "Dirty", &Dirty);
        FUNC3(arl_base, "Writeback", &Writeback);
        //arl_expect(arl_base, "AnonPages", &AnonPages);
        //arl_expect(arl_base, "Mapped", &Mapped);
        //arl_expect(arl_base, "Shmem", &Shmem);
        FUNC3(arl_base, "Slab", &Slab);
        FUNC3(arl_base, "SReclaimable", &SReclaimable);
        FUNC3(arl_base, "SUnreclaim", &SUnreclaim);
        FUNC3(arl_base, "KernelStack", &KernelStack);
        FUNC3(arl_base, "PageTables", &PageTables);
        FUNC3(arl_base, "NFS_Unstable", &NFS_Unstable);
        FUNC3(arl_base, "Bounce", &Bounce);
        FUNC3(arl_base, "WritebackTmp", &WritebackTmp);
        //arl_expect(arl_base, "CommitLimit", &CommitLimit);
        FUNC3(arl_base, "Committed_AS", &Committed_AS);
        //arl_expect(arl_base, "VmallocTotal", &VmallocTotal);
        FUNC3(arl_base, "VmallocUsed", &VmallocUsed);
        //arl_expect(arl_base, "VmallocChunk", &VmallocChunk);
        arl_hwcorrupted = FUNC3(arl_base, "HardwareCorrupted", &HardwareCorrupted);
        FUNC3(arl_base, "AnonHugePages", &AnonHugePages);
        FUNC3(arl_base, "ShmemHugePages", &ShmemHugePages);
        FUNC3(arl_base, "HugePages_Total", &HugePages_Total);
        FUNC3(arl_base, "HugePages_Free", &HugePages_Free);
        FUNC3(arl_base, "HugePages_Rsvd", &HugePages_Rsvd);
        FUNC3(arl_base, "HugePages_Surp", &HugePages_Surp);
        FUNC3(arl_base, "Hugepagesize", &Hugepagesize);
        //arl_expect(arl_base, "DirectMap4k", &DirectMap4k);
        //arl_expect(arl_base, "DirectMap2M", &DirectMap2M);
    }

    if(FUNC19(!ff)) {
        char filename[FILENAME_MAX + 1];
        FUNC18(filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, "/proc/meminfo");
        ff = FUNC10(FUNC4(CONFIG_SECTION_PLUGIN_PROC_MEMINFO, "filename to monitor", filename), " \t:", PROCFILE_FLAG_DEFAULT);
        if(FUNC19(!ff))
            return 1;
    }

    ff = FUNC11(ff);
    if(FUNC19(!ff))
        return 0; // we return 0, so that we will retry to open it next time

    size_t lines = FUNC7(ff), l;

    FUNC0(arl_base);

    for(l = 0; l < lines ;l++) {
        size_t words = FUNC9(ff, l);
        if(FUNC19(words < 2)) continue;

        if(FUNC19(FUNC1(arl_base,
                FUNC8(ff, l, 0),
                FUNC8(ff, l, 1)))) break;
    }

    // --------------------------------------------------------------------

    // http://stackoverflow.com/questions/3019748/how-to-reliably-measure-available-memory-in-linux
    unsigned long long MemCached = Cached + SReclaimable;
    unsigned long long MemUsed = MemTotal - MemFree - MemCached - Buffers;

    if(do_ram) {
        {
            static RRDSET *st_system_ram = NULL;
            static RRDDIM *rd_free = NULL, *rd_used = NULL, *rd_cached = NULL, *rd_buffers = NULL;

            if(FUNC19(!st_system_ram)) {
                st_system_ram = FUNC14(
                        "system"
                        , "ram"
                        , NULL
                        , "ram"
                        , NULL
                        , "System RAM"
                        , "MiB"
                        , PLUGIN_PROC_NAME
                        , PLUGIN_PROC_MODULE_MEMINFO_NAME
                        , NETDATA_CHART_PRIO_SYSTEM_RAM
                        , update_every
                        , RRDSET_TYPE_STACKED
                );

                rd_free    = FUNC12(st_system_ram, "free",    NULL, 1, 1024, RRD_ALGORITHM_ABSOLUTE);
                rd_used    = FUNC12(st_system_ram, "used",    NULL, 1, 1024, RRD_ALGORITHM_ABSOLUTE);
                rd_cached  = FUNC12(st_system_ram, "cached",  NULL, 1, 1024, RRD_ALGORITHM_ABSOLUTE);
                rd_buffers = FUNC12(st_system_ram, "buffers", NULL, 1, 1024, RRD_ALGORITHM_ABSOLUTE);
            }
            else FUNC17(st_system_ram);

            FUNC13(st_system_ram, rd_free,    MemFree);
            FUNC13(st_system_ram, rd_used,    MemUsed);
            FUNC13(st_system_ram, rd_cached,  MemCached);
            FUNC13(st_system_ram, rd_buffers, Buffers);

            FUNC15(st_system_ram);
        }

        if(arl_memavailable->flags & ARL_ENTRY_FLAG_FOUND) {
            static RRDSET *st_mem_available = NULL;
            static RRDDIM *rd_avail = NULL;

            if(FUNC19(!st_mem_available)) {
                st_mem_available = FUNC14(
                        "mem"
                        , "available"
                        , NULL
                        , "system"
                        , NULL
                        , "Available RAM for applications"
                        , "MiB"
                        , PLUGIN_PROC_NAME
                        , PLUGIN_PROC_MODULE_MEMINFO_NAME
                        , NETDATA_CHART_PRIO_MEM_SYSTEM_AVAILABLE
                        , update_every
                        , RRDSET_TYPE_AREA
                );

                rd_avail   = FUNC12(st_mem_available, "MemAvailable", "avail", 1, 1024, RRD_ALGORITHM_ABSOLUTE);
            }
            else FUNC17(st_mem_available);

            FUNC13(st_mem_available, rd_avail, MemAvailable);

            FUNC15(st_mem_available);
        }
    }

    // --------------------------------------------------------------------

    unsigned long long SwapUsed = SwapTotal - SwapFree;

    if(do_swap == CONFIG_BOOLEAN_YES || (do_swap == CONFIG_BOOLEAN_AUTO &&
                                         (SwapTotal || SwapUsed || SwapFree ||
                                          netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))) {
        do_swap = CONFIG_BOOLEAN_YES;

        static RRDSET *st_system_swap = NULL;
        static RRDDIM *rd_free = NULL, *rd_used = NULL;

        if(FUNC19(!st_system_swap)) {
            st_system_swap = FUNC14(
                    "system"
                    , "swap"
                    , NULL
                    , "swap"
                    , NULL
                    , "System Swap"
                    , "MiB"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_MEMINFO_NAME
                    , NETDATA_CHART_PRIO_SYSTEM_SWAP
                    , update_every
                    , RRDSET_TYPE_STACKED
            );

            FUNC16(st_system_swap, RRDSET_FLAG_DETAIL);

            rd_free = FUNC12(st_system_swap, "free",    NULL, 1, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_used = FUNC12(st_system_swap, "used",    NULL, 1, 1024, RRD_ALGORITHM_ABSOLUTE);
        }
        else FUNC17(st_system_swap);

        FUNC13(st_system_swap, rd_used, SwapUsed);
        FUNC13(st_system_swap, rd_free, SwapFree);

        FUNC15(st_system_swap);
    }

    // --------------------------------------------------------------------

    if(arl_hwcorrupted->flags & ARL_ENTRY_FLAG_FOUND &&
       (do_hwcorrupt == CONFIG_BOOLEAN_YES || (do_hwcorrupt == CONFIG_BOOLEAN_AUTO &&
                                               (HardwareCorrupted > 0 ||
                                                netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES)))) {
        do_hwcorrupt = CONFIG_BOOLEAN_YES;

        static RRDSET *st_mem_hwcorrupt = NULL;
        static RRDDIM *rd_corrupted = NULL;

        if(FUNC19(!st_mem_hwcorrupt)) {
            st_mem_hwcorrupt = FUNC14(
                    "mem"
                    , "hwcorrupt"
                    , NULL
                    , "ecc"
                    , NULL
                    , "Corrupted Memory, detected by ECC"
                    , "MiB"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_MEMINFO_NAME
                    , NETDATA_CHART_PRIO_MEM_HW
                    , update_every
                    , RRDSET_TYPE_LINE
            );

            FUNC16(st_mem_hwcorrupt, RRDSET_FLAG_DETAIL);

            rd_corrupted = FUNC12(st_mem_hwcorrupt, "HardwareCorrupted", NULL, 1, 1024, RRD_ALGORITHM_ABSOLUTE);
        }
        else FUNC17(st_mem_hwcorrupt);

        FUNC13(st_mem_hwcorrupt, rd_corrupted, HardwareCorrupted);

        FUNC15(st_mem_hwcorrupt);
    }

    // --------------------------------------------------------------------

    if(do_committed) {
        static RRDSET *st_mem_committed = NULL;
        static RRDDIM *rd_committed = NULL;

        if(FUNC19(!st_mem_committed)) {
            st_mem_committed = FUNC14(
                    "mem"
                    , "committed"
                    , NULL
                    , "system"
                    , NULL
                    , "Committed (Allocated) Memory"
                    , "MiB"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_MEMINFO_NAME
                    , NETDATA_CHART_PRIO_MEM_SYSTEM_COMMITTED
                    , update_every
                    , RRDSET_TYPE_AREA
            );

            FUNC16(st_mem_committed, RRDSET_FLAG_DETAIL);

            rd_committed = FUNC12(st_mem_committed, "Committed_AS", NULL, 1, 1024, RRD_ALGORITHM_ABSOLUTE);
        }
        else FUNC17(st_mem_committed);

        FUNC13(st_mem_committed, rd_committed, Committed_AS);

        FUNC15(st_mem_committed);
    }

    // --------------------------------------------------------------------

    if(do_writeback) {
        static RRDSET *st_mem_writeback = NULL;
        static RRDDIM *rd_dirty = NULL, *rd_writeback = NULL, *rd_fusewriteback = NULL, *rd_nfs_writeback = NULL, *rd_bounce = NULL;

        if(FUNC19(!st_mem_writeback)) {
            st_mem_writeback = FUNC14(
                    "mem"
                    , "writeback"
                    , NULL
                    , "kernel"
                    , NULL
                    , "Writeback Memory"
                    , "MiB"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_MEMINFO_NAME
                    , NETDATA_CHART_PRIO_MEM_KERNEL
                    , update_every
                    , RRDSET_TYPE_LINE
            );
            FUNC16(st_mem_writeback, RRDSET_FLAG_DETAIL);

            rd_dirty         = FUNC12(st_mem_writeback, "Dirty",         NULL, 1, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_writeback     = FUNC12(st_mem_writeback, "Writeback",     NULL, 1, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_fusewriteback = FUNC12(st_mem_writeback, "FuseWriteback", NULL, 1, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_nfs_writeback = FUNC12(st_mem_writeback, "NfsWriteback",  NULL, 1, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_bounce        = FUNC12(st_mem_writeback, "Bounce",        NULL, 1, 1024, RRD_ALGORITHM_ABSOLUTE);
        }
        else FUNC17(st_mem_writeback);

        FUNC13(st_mem_writeback, rd_dirty,         Dirty);
        FUNC13(st_mem_writeback, rd_writeback,     Writeback);
        FUNC13(st_mem_writeback, rd_fusewriteback, WritebackTmp);
        FUNC13(st_mem_writeback, rd_nfs_writeback, NFS_Unstable);
        FUNC13(st_mem_writeback, rd_bounce,        Bounce);

        FUNC15(st_mem_writeback);
    }

    // --------------------------------------------------------------------

    if(do_kernel) {
        static RRDSET *st_mem_kernel = NULL;
        static RRDDIM *rd_slab = NULL, *rd_kernelstack = NULL, *rd_pagetables = NULL, *rd_vmallocused = NULL;

        if(FUNC19(!st_mem_kernel)) {
            st_mem_kernel = FUNC14(
                    "mem"
                    , "kernel"
                    , NULL
                    , "kernel"
                    , NULL
                    , "Memory Used by Kernel"
                    , "MiB"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_MEMINFO_NAME
                    , NETDATA_CHART_PRIO_MEM_KERNEL + 1
                    , update_every
                    , RRDSET_TYPE_STACKED
            );

            FUNC16(st_mem_kernel, RRDSET_FLAG_DETAIL);

            rd_slab        = FUNC12(st_mem_kernel, "Slab",        NULL, 1, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_kernelstack = FUNC12(st_mem_kernel, "KernelStack", NULL, 1, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_pagetables  = FUNC12(st_mem_kernel, "PageTables",  NULL, 1, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_vmallocused = FUNC12(st_mem_kernel, "VmallocUsed", NULL, 1, 1024, RRD_ALGORITHM_ABSOLUTE);
        }
        else FUNC17(st_mem_kernel);

        FUNC13(st_mem_kernel, rd_slab,        Slab);
        FUNC13(st_mem_kernel, rd_kernelstack, KernelStack);
        FUNC13(st_mem_kernel, rd_pagetables,  PageTables);
        FUNC13(st_mem_kernel, rd_vmallocused, VmallocUsed);

        FUNC15(st_mem_kernel);
    }

    // --------------------------------------------------------------------

    if(do_slab) {
        static RRDSET *st_mem_slab = NULL;
        static RRDDIM *rd_reclaimable = NULL, *rd_unreclaimable = NULL;

        if(FUNC19(!st_mem_slab)) {
            st_mem_slab = FUNC14(
                    "mem"
                    , "slab"
                    , NULL
                    , "slab"
                    , NULL
                    , "Reclaimable Kernel Memory"
                    , "MiB"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_MEMINFO_NAME
                    , NETDATA_CHART_PRIO_MEM_SLAB
                    , update_every
                    , RRDSET_TYPE_STACKED
            );

            FUNC16(st_mem_slab, RRDSET_FLAG_DETAIL);

            rd_reclaimable   = FUNC12(st_mem_slab, "reclaimable",   NULL, 1, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_unreclaimable = FUNC12(st_mem_slab, "unreclaimable", NULL, 1, 1024, RRD_ALGORITHM_ABSOLUTE);
        }
        else FUNC17(st_mem_slab);

        FUNC13(st_mem_slab, rd_reclaimable, SReclaimable);
        FUNC13(st_mem_slab, rd_unreclaimable, SUnreclaim);

        FUNC15(st_mem_slab);
    }

    // --------------------------------------------------------------------

    if(do_hugepages == CONFIG_BOOLEAN_YES || (do_hugepages == CONFIG_BOOLEAN_AUTO &&
                                              ((Hugepagesize && HugePages_Total) ||
                                               netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))) {
        do_hugepages = CONFIG_BOOLEAN_YES;

        static RRDSET *st_mem_hugepages = NULL;
        static RRDDIM *rd_used = NULL, *rd_free = NULL, *rd_rsvd = NULL, *rd_surp = NULL;

        if(FUNC19(!st_mem_hugepages)) {
            st_mem_hugepages = FUNC14(
                    "mem"
                    , "hugepages"
                    , NULL
                    , "hugepages"
                    , NULL
                    , "Dedicated HugePages Memory"
                    , "MiB"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_MEMINFO_NAME
                    , NETDATA_CHART_PRIO_MEM_HUGEPAGES + 1
                    , update_every
                    , RRDSET_TYPE_STACKED
            );

            FUNC16(st_mem_hugepages, RRDSET_FLAG_DETAIL);

            rd_free = FUNC12(st_mem_hugepages, "free",     NULL, Hugepagesize, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_used = FUNC12(st_mem_hugepages, "used",     NULL, Hugepagesize, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_surp = FUNC12(st_mem_hugepages, "surplus",  NULL, Hugepagesize, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_rsvd = FUNC12(st_mem_hugepages, "reserved", NULL, Hugepagesize, 1024, RRD_ALGORITHM_ABSOLUTE);
        }
        else FUNC17(st_mem_hugepages);

        FUNC13(st_mem_hugepages, rd_used, HugePages_Total - HugePages_Free - HugePages_Rsvd);
        FUNC13(st_mem_hugepages, rd_free, HugePages_Free);
        FUNC13(st_mem_hugepages, rd_rsvd, HugePages_Rsvd);
        FUNC13(st_mem_hugepages, rd_surp, HugePages_Surp);

        FUNC15(st_mem_hugepages);
    }

    // --------------------------------------------------------------------

    if(do_transparent_hugepages == CONFIG_BOOLEAN_YES || (do_transparent_hugepages == CONFIG_BOOLEAN_AUTO &&
                                                          (AnonHugePages ||
                                                           ShmemHugePages ||
                                                           netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))) {
        do_transparent_hugepages = CONFIG_BOOLEAN_YES;

        static RRDSET *st_mem_transparent_hugepages = NULL;
        static RRDDIM *rd_anonymous = NULL, *rd_shared = NULL;

        if(FUNC19(!st_mem_transparent_hugepages)) {
            st_mem_transparent_hugepages = FUNC14(
                    "mem"
                    , "transparent_hugepages"
                    , NULL
                    , "hugepages"
                    , NULL
                    , "Transparent HugePages Memory"
                    , "MiB"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_MEMINFO_NAME
                    , NETDATA_CHART_PRIO_MEM_HUGEPAGES
                    , update_every
                    , RRDSET_TYPE_STACKED
            );

            FUNC16(st_mem_transparent_hugepages, RRDSET_FLAG_DETAIL);

            rd_anonymous = FUNC12(st_mem_transparent_hugepages, "anonymous",  NULL, 1, 1024, RRD_ALGORITHM_ABSOLUTE);
            rd_shared    = FUNC12(st_mem_transparent_hugepages, "shmem",      NULL, 1, 1024, RRD_ALGORITHM_ABSOLUTE);
        }
        else FUNC17(st_mem_transparent_hugepages);

        FUNC13(st_mem_transparent_hugepages, rd_anonymous, AnonHugePages);
        FUNC13(st_mem_transparent_hugepages, rd_shared, ShmemHugePages);

        FUNC15(st_mem_transparent_hugepages);
    }

    return 0;
}