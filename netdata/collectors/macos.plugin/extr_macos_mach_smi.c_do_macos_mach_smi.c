
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ purges; scalar_t__ reactivations; scalar_t__ zero_fill_count; scalar_t__ decompressions; scalar_t__ compressions; scalar_t__ pageouts; scalar_t__ pageins; scalar_t__ cow_faults; scalar_t__ faults; scalar_t__ swapouts; scalar_t__ swapins; scalar_t__ speculative_count; scalar_t__ free_count; scalar_t__ purgeable_count; scalar_t__ inactive_count; scalar_t__ compressor_page_count; scalar_t__ throttled_count; scalar_t__ wire_count; scalar_t__ active_count; } ;
typedef TYPE_1__ vm_statistics_data_t ;
typedef int vm_statistics64_data_t ;
typedef int vm_size_t ;
typedef int usec_t ;
typedef scalar_t__ natural_t ;
typedef int mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;
typedef int host_t ;
typedef int host_info_t ;
typedef int host_info64_t ;
typedef int RRDSET ;


 size_t CPU_STATE_IDLE ;
 int CPU_STATE_MAX ;
 size_t CPU_STATE_NICE ;
 size_t CPU_STATE_SYSTEM ;
 size_t CPU_STATE_USER ;
 int HOST_CPU_LOAD_INFO ;
 int HOST_CPU_LOAD_INFO_COUNT ;
 int HOST_VM_INFO ;
 int HOST_VM_INFO64 ;
 scalar_t__ KERN_SUCCESS ;
 int NETDATA_CHART_PRIO_MEM_SYSTEM_PGFAULTS ;
 int RRDSET_FLAG_DETAIL ;
 int RRDSET_TYPE_AREA ;
 int RRDSET_TYPE_LINE ;
 int RRDSET_TYPE_STACKED ;
 int RRD_ALGORITHM_ABSOLUTE ;
 int RRD_ALGORITHM_INCREMENTAL ;
 int RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL ;
 int config_get_boolean (char*,char*,int) ;
 int error (char*,...) ;
 scalar_t__ host_page_size (int ,int*) ;
 scalar_t__ host_statistics (int ,int ,int ,int*) ;
 scalar_t__ host_statistics64 (int ,int ,int ,int*) ;
 scalar_t__ likely (int) ;
 int mach_error_string (scalar_t__) ;
 int mach_host_self () ;
 int rrddim_add (int *,char*,int *,int,int,int ) ;
 int rrddim_hide (int *,char*) ;
 int rrddim_set (int *,char*,scalar_t__) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,char*,char*,char*,char*,char*,int,int,int ) ;
 int rrdset_done (int *) ;
 int * rrdset_find_bytype_localhost (char*,char*) ;
 int * rrdset_find_localhost (char*) ;
 int rrdset_flag_set (int *,int ) ;
 int rrdset_next (int *) ;
 scalar_t__ unlikely (int) ;

int do_macos_mach_smi(int update_every, usec_t dt) {
    (void)dt;

    static int do_cpu = -1, do_ram = - 1, do_swapio = -1, do_pgfaults = -1;

    if (unlikely(do_cpu == -1)) {
        do_cpu = config_get_boolean("plugin:macos:mach_smi", "cpu utilization", 1);
        do_ram = config_get_boolean("plugin:macos:mach_smi", "system ram", 1);
        do_swapio = config_get_boolean("plugin:macos:mach_smi", "swap i/o", 1);
        do_pgfaults = config_get_boolean("plugin:macos:mach_smi", "memory page faults", 1);
    }

    RRDSET *st;

 kern_return_t kr;
 mach_msg_type_number_t count;
    host_t host;
    vm_size_t system_pagesize;



    natural_t cp_time[CPU_STATE_MAX];





    vm_statistics_data_t vm_statistics;


    host = mach_host_self();
    kr = host_page_size(host, &system_pagesize);
    if (unlikely(kr != KERN_SUCCESS))
        return -1;



    if (likely(do_cpu)) {
        if (unlikely(HOST_CPU_LOAD_INFO_COUNT != 4)) {
            error("MACOS: There are %d CPU states (4 was expected)", HOST_CPU_LOAD_INFO_COUNT);
            do_cpu = 0;
            error("DISABLED: system.cpu");
        } else {
            count = HOST_CPU_LOAD_INFO_COUNT;
            kr = host_statistics(host, HOST_CPU_LOAD_INFO, (host_info_t)cp_time, &count);
            if (unlikely(kr != KERN_SUCCESS)) {
                error("MACOS: host_statistics() failed: %s", mach_error_string(kr));
                do_cpu = 0;
                error("DISABLED: system.cpu");
            } else {

                st = rrdset_find_bytype_localhost("system", "cpu");
                if (unlikely(!st)) {
                    st = rrdset_create_localhost(
                            "system"
                            , "cpu"
                            , ((void*)0)
                            , "cpu"
                            , "system.cpu"
                            , "Total CPU utilization"
                            , "percentage"
                            , "macos"
                            , "mach_smi"
                            , 100
                            , update_every
                            , RRDSET_TYPE_STACKED
                    );

                    rrddim_add(st, "user", ((void*)0), 1, 1, RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL);
                    rrddim_add(st, "nice", ((void*)0), 1, 1, RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL);
                    rrddim_add(st, "system", ((void*)0), 1, 1, RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL);
                    rrddim_add(st, "idle", ((void*)0), 1, 1, RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL);
                    rrddim_hide(st, "idle");
                }
                else rrdset_next(st);

                rrddim_set(st, "user", cp_time[CPU_STATE_USER]);
                rrddim_set(st, "nice", cp_time[CPU_STATE_NICE]);
                rrddim_set(st, "system", cp_time[CPU_STATE_SYSTEM]);
                rrddim_set(st, "idle", cp_time[CPU_STATE_IDLE]);
                rrdset_done(st);
            }
        }
     }



    if (likely(do_ram || do_swapio || do_pgfaults)) {




        count = sizeof(vm_statistics_data_t);
        kr = host_statistics(host, HOST_VM_INFO, (host_info_t)&vm_statistics, &count);

        if (unlikely(kr != KERN_SUCCESS)) {
            error("MACOS: host_statistics64() failed: %s", mach_error_string(kr));
            do_ram = 0;
            error("DISABLED: system.ram");
            do_swapio = 0;
            error("DISABLED: system.swapio");
            do_pgfaults = 0;
            error("DISABLED: mem.pgfaults");
        } else {
            if (likely(do_ram)) {
                st = rrdset_find_localhost("system.ram");
                if (unlikely(!st)) {
                    st = rrdset_create_localhost(
                            "system"
                            , "ram"
                            , ((void*)0)
                            , "ram"
                            , ((void*)0)
                            , "System RAM"
                            , "MiB"
                            , "macos"
                            , "mach_smi"
                            , 200
                            , update_every
                            , RRDSET_TYPE_STACKED
                    );

                    rrddim_add(st, "active", ((void*)0), system_pagesize, 1048576, RRD_ALGORITHM_ABSOLUTE);
                    rrddim_add(st, "wired", ((void*)0), system_pagesize, 1048576, RRD_ALGORITHM_ABSOLUTE);




                    rrddim_add(st, "inactive", ((void*)0), system_pagesize, 1048576, RRD_ALGORITHM_ABSOLUTE);
                    rrddim_add(st, "purgeable", ((void*)0), system_pagesize, 1048576, RRD_ALGORITHM_ABSOLUTE);
                    rrddim_add(st, "speculative", ((void*)0), system_pagesize, 1048576, RRD_ALGORITHM_ABSOLUTE);
                    rrddim_add(st, "free", ((void*)0), system_pagesize, 1048576, RRD_ALGORITHM_ABSOLUTE);
                }
                else rrdset_next(st);

                rrddim_set(st, "active", vm_statistics.active_count);
                rrddim_set(st, "wired", vm_statistics.wire_count);




                rrddim_set(st, "inactive", vm_statistics.inactive_count);
                rrddim_set(st, "purgeable", vm_statistics.purgeable_count);
                rrddim_set(st, "speculative", vm_statistics.speculative_count);
                rrddim_set(st, "free", (vm_statistics.free_count - vm_statistics.speculative_count));
                rrdset_done(st);
            }
            if (likely(do_pgfaults)) {
                st = rrdset_find_localhost("mem.pgfaults");
                if (unlikely(!st)) {
                    st = rrdset_create_localhost(
                            "mem"
                            , "pgfaults"
                            , ((void*)0)
                            , "system"
                            , ((void*)0)
                            , "Memory Page Faults"
                            , "faults/s"
                            , "macos"
                            , "mach_smi"
                            , NETDATA_CHART_PRIO_MEM_SYSTEM_PGFAULTS
                            , update_every
                            , RRDSET_TYPE_LINE
                    );
                    rrdset_flag_set(st, RRDSET_FLAG_DETAIL);

                    rrddim_add(st, "memory", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rrddim_add(st, "cow", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rrddim_add(st, "pagein", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rrddim_add(st, "pageout", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);




                    rrddim_add(st, "zero_fill", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rrddim_add(st, "reactivate", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rrddim_add(st, "purge", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                }
                else rrdset_next(st);

                rrddim_set(st, "memory", vm_statistics.faults);
                rrddim_set(st, "cow", vm_statistics.cow_faults);
                rrddim_set(st, "pagein", vm_statistics.pageins);
                rrddim_set(st, "pageout", vm_statistics.pageouts);




                rrddim_set(st, "zero_fill", vm_statistics.zero_fill_count);
                rrddim_set(st, "reactivate", vm_statistics.reactivations);
                rrddim_set(st, "purge", vm_statistics.purges);
                rrdset_done(st);
            }
        }
    }



    return 0;
}
