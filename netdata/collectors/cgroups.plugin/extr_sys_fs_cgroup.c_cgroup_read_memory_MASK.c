#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct memory {scalar_t__ enabled_detailed; scalar_t__ delay_counter_detailed; int updated_detailed; int detailed_has_dirty; int detailed_has_swap; int updated_usage_in_bytes; scalar_t__ enabled_usage_in_bytes; int updated_msw_usage_in_bytes; scalar_t__ enabled_msw_usage_in_bytes; scalar_t__ enabled_failcnt; scalar_t__ delay_counter_failcnt; int updated_failcnt; scalar_t__ failcnt; int /*<<< orphan*/  filename_failcnt; scalar_t__ msw_usage_in_bytes; int /*<<< orphan*/  filename_msw_usage_in_bytes; scalar_t__ usage_in_bytes; int /*<<< orphan*/  filename_usage_in_bytes; scalar_t__ total_pgmajfault; scalar_t__ total_pgfault; scalar_t__ anon_thp; scalar_t__ total_writeback; scalar_t__ sock; scalar_t__ slab; scalar_t__ kernel_stack; scalar_t__ total_dirty; scalar_t__ anon; scalar_t__ total_pgpgout; scalar_t__ total_pgpgin; scalar_t__ total_swap; scalar_t__ total_mapped_file; scalar_t__ total_rss_huge; scalar_t__ total_rss; scalar_t__ total_cache; TYPE_2__* arl_swap; TYPE_1__* arl_dirty; void* arl_base; int /*<<< orphan*/  filename_detailed; } ;
typedef  int /*<<< orphan*/  procfile ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int ARL_ENTRY_FLAG_FOUND ; 
 scalar_t__ CONFIG_BOOLEAN_AUTO ; 
 scalar_t__ CONFIG_BOOLEAN_YES ; 
 int /*<<< orphan*/  PROCFILE_FLAG_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 void* FUNC3 (void*,char*,scalar_t__*) ; 
 scalar_t__ cgroup_recheck_zero_mem_detailed_every_iterations ; 
 scalar_t__ cgroup_recheck_zero_mem_failcnt_every_iterations ; 
 int cgroups_check ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ netdata_zero_metrics_enabled ; 
 unsigned long FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static inline void FUNC12(struct memory *mem, char parent_cg_is_unified) {
    static procfile *ff = NULL;

    // read detailed ram usage
    if(FUNC5(mem->filename_detailed)) {
        if(FUNC11(mem->enabled_detailed == CONFIG_BOOLEAN_AUTO && mem->delay_counter_detailed > 0)) {
            mem->delay_counter_detailed--;
            goto memory_next;
        }

        ff = FUNC9(ff, mem->filename_detailed, NULL, PROCFILE_FLAG_DEFAULT);
        if(FUNC11(!ff)) {
            mem->updated_detailed = 0;
            cgroups_check = 1;
            goto memory_next;
        }

        ff = FUNC8(ff);
        if(FUNC11(!ff)) {
            mem->updated_detailed = 0;
            cgroups_check = 1;
            goto memory_next;
        }

        unsigned long i, lines = FUNC6(ff);

        if(FUNC11(lines < 1)) {
            FUNC4("CGROUP: file '%s' should have 1+ lines.", mem->filename_detailed);
            mem->updated_detailed = 0;
            goto memory_next;
        }


        if(FUNC11(!mem->arl_base)) {
            if(parent_cg_is_unified == 0){
                mem->arl_base = FUNC2("cgroup/memory", NULL, 60);

                FUNC3(mem->arl_base, "total_cache", &mem->total_cache);
                FUNC3(mem->arl_base, "total_rss", &mem->total_rss);
                FUNC3(mem->arl_base, "total_rss_huge", &mem->total_rss_huge);
                FUNC3(mem->arl_base, "total_mapped_file", &mem->total_mapped_file);
                FUNC3(mem->arl_base, "total_writeback", &mem->total_writeback);
                mem->arl_dirty = FUNC3(mem->arl_base, "total_dirty", &mem->total_dirty);
                mem->arl_swap  = FUNC3(mem->arl_base, "total_swap", &mem->total_swap);
                FUNC3(mem->arl_base, "total_pgpgin", &mem->total_pgpgin);
                FUNC3(mem->arl_base, "total_pgpgout", &mem->total_pgpgout);
                FUNC3(mem->arl_base, "total_pgfault", &mem->total_pgfault);
                FUNC3(mem->arl_base, "total_pgmajfault", &mem->total_pgmajfault);
            } else {
                mem->arl_base = FUNC2("cgroup/memory", NULL, 60);

                FUNC3(mem->arl_base, "anon", &mem->anon);
                FUNC3(mem->arl_base, "kernel_stack", &mem->kernel_stack);
                FUNC3(mem->arl_base, "slab", &mem->slab);
                FUNC3(mem->arl_base, "sock", &mem->sock);
                FUNC3(mem->arl_base, "anon_thp", &mem->anon_thp);
                FUNC3(mem->arl_base, "file", &mem->total_mapped_file);
                FUNC3(mem->arl_base, "file_writeback", &mem->total_writeback);
                mem->arl_dirty = FUNC3(mem->arl_base, "file_dirty", &mem->total_dirty);
                FUNC3(mem->arl_base, "pgfault", &mem->total_pgfault);
                FUNC3(mem->arl_base, "pgmajfault", &mem->total_pgmajfault);
            }
        }

        FUNC0(mem->arl_base);

        for(i = 0; i < lines ; i++) {
            if(FUNC1(mem->arl_base,
                    FUNC7(ff, i, 0),
                    FUNC7(ff, i, 1))) break;
        }

        if(FUNC11(mem->arl_dirty->flags & ARL_ENTRY_FLAG_FOUND))
            mem->detailed_has_dirty = 1;

        if(FUNC11(parent_cg_is_unified == 0 && mem->arl_swap->flags & ARL_ENTRY_FLAG_FOUND))
            mem->detailed_has_swap = 1;

        // fprintf(stderr, "READ: '%s', cache: %llu, rss: %llu, rss_huge: %llu, mapped_file: %llu, writeback: %llu, dirty: %llu, swap: %llu, pgpgin: %llu, pgpgout: %llu, pgfault: %llu, pgmajfault: %llu, inactive_anon: %llu, active_anon: %llu, inactive_file: %llu, active_file: %llu, unevictable: %llu, hierarchical_memory_limit: %llu, total_cache: %llu, total_rss: %llu, total_rss_huge: %llu, total_mapped_file: %llu, total_writeback: %llu, total_dirty: %llu, total_swap: %llu, total_pgpgin: %llu, total_pgpgout: %llu, total_pgfault: %llu, total_pgmajfault: %llu, total_inactive_anon: %llu, total_active_anon: %llu, total_inactive_file: %llu, total_active_file: %llu, total_unevictable: %llu\n", mem->filename, mem->cache, mem->rss, mem->rss_huge, mem->mapped_file, mem->writeback, mem->dirty, mem->swap, mem->pgpgin, mem->pgpgout, mem->pgfault, mem->pgmajfault, mem->inactive_anon, mem->active_anon, mem->inactive_file, mem->active_file, mem->unevictable, mem->hierarchical_memory_limit, mem->total_cache, mem->total_rss, mem->total_rss_huge, mem->total_mapped_file, mem->total_writeback, mem->total_dirty, mem->total_swap, mem->total_pgpgin, mem->total_pgpgout, mem->total_pgfault, mem->total_pgmajfault, mem->total_inactive_anon, mem->total_active_anon, mem->total_inactive_file, mem->total_active_file, mem->total_unevictable);

        mem->updated_detailed = 1;

        if(FUNC11(mem->enabled_detailed == CONFIG_BOOLEAN_AUTO)) {
            if(( (!parent_cg_is_unified) && ( mem->total_cache || mem->total_dirty || mem->total_rss || mem->total_rss_huge || mem->total_mapped_file || mem->total_writeback
                    || mem->total_swap || mem->total_pgpgin || mem->total_pgpgout || mem->total_pgfault || mem->total_pgmajfault))
               || (parent_cg_is_unified && ( mem->anon || mem->total_dirty || mem->kernel_stack || mem->slab || mem->sock || mem->total_writeback
                    || mem->anon_thp || mem->total_pgfault || mem->total_pgmajfault))
               || netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES)
                mem->enabled_detailed = CONFIG_BOOLEAN_YES;
            else
                mem->delay_counter_detailed = cgroup_recheck_zero_mem_detailed_every_iterations;
        }
    }

memory_next:

    // read usage_in_bytes
    if(FUNC5(mem->filename_usage_in_bytes)) {
        mem->updated_usage_in_bytes = !FUNC10(mem->filename_usage_in_bytes, &mem->usage_in_bytes);
        if(FUNC11(mem->updated_usage_in_bytes && mem->enabled_usage_in_bytes == CONFIG_BOOLEAN_AUTO &&
                    (mem->usage_in_bytes || netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES)))
            mem->enabled_usage_in_bytes = CONFIG_BOOLEAN_YES;
    }

    // read msw_usage_in_bytes
    if(FUNC5(mem->filename_msw_usage_in_bytes)) {
        mem->updated_msw_usage_in_bytes = !FUNC10(mem->filename_msw_usage_in_bytes, &mem->msw_usage_in_bytes);
        if(FUNC11(mem->updated_msw_usage_in_bytes && mem->enabled_msw_usage_in_bytes == CONFIG_BOOLEAN_AUTO &&
                    (mem->msw_usage_in_bytes || netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES)))
            mem->enabled_msw_usage_in_bytes = CONFIG_BOOLEAN_YES;
    }

    // read failcnt
    if(FUNC5(mem->filename_failcnt)) {
        if(FUNC11(mem->enabled_failcnt == CONFIG_BOOLEAN_AUTO && mem->delay_counter_failcnt > 0)) {
            mem->updated_failcnt = 0;
            mem->delay_counter_failcnt--;
        }
        else {
            mem->updated_failcnt = !FUNC10(mem->filename_failcnt, &mem->failcnt);
            if(FUNC11(mem->updated_failcnt && mem->enabled_failcnt == CONFIG_BOOLEAN_AUTO)) {
                if(FUNC11(mem->failcnt || netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))
                    mem->enabled_failcnt = CONFIG_BOOLEAN_YES;
                else
                    mem->delay_counter_failcnt = cgroup_recheck_zero_mem_failcnt_every_iterations;
            }
        }
    }
}