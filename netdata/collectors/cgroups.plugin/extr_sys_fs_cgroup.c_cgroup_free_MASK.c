#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {struct cgroup* filename; } ;
struct TYPE_17__ {struct cgroup* filename; } ;
struct TYPE_16__ {struct cgroup* filename; } ;
struct TYPE_15__ {struct cgroup* filename; } ;
struct TYPE_14__ {struct cgroup* filename; } ;
struct TYPE_13__ {struct cgroup* filename; } ;
struct TYPE_12__ {struct cgroup* filename_msw_usage_in_bytes; struct cgroup* filename_usage_in_bytes; struct cgroup* filename_failcnt; struct cgroup* filename_detailed; int /*<<< orphan*/  arl_base; } ;
struct TYPE_11__ {struct cgroup* filename; struct cgroup* cpu_percpu; } ;
struct TYPE_10__ {struct cgroup* filename; } ;
struct cgroup {struct cgroup* chart_title; struct cgroup* chart_id; struct cgroup* id; TYPE_9__ io_queued; TYPE_8__ io_merged; TYPE_7__ throttle_io_serviced; TYPE_6__ throttle_io_service_bytes; TYPE_5__ io_serviced; TYPE_4__ io_service_bytes; TYPE_3__ memory; TYPE_2__ cpuacct_usage; TYPE_1__ cpuacct_stat; struct cgroup* filename_memoryswap_limit; struct cgroup* filename_memory_limit; struct cgroup* filename_cpu_cfs_quota; struct cgroup* filename_cpu_cfs_period; struct cgroup* filename_cpuset_cpus; scalar_t__ st_merged_ops; scalar_t__ st_queued_ops; scalar_t__ st_throttle_serviced_ops; scalar_t__ st_throttle_io; scalar_t__ st_serviced_ops; scalar_t__ st_io; scalar_t__ st_mem_failcnt; scalar_t__ st_mem_usage_limit; scalar_t__ st_mem_usage; scalar_t__ st_pgfaults; scalar_t__ st_mem_activity; scalar_t__ st_writeback; scalar_t__ st_mem; scalar_t__ st_cpu_per_core; scalar_t__ st_cpu_limit; scalar_t__ st_cpu; scalar_t__ available; scalar_t__ enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_CGROUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cgroup_root_count ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct cgroup*,struct cgroup*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC3 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC5(struct cgroup *cg) {
    FUNC1(D_CGROUP, "Removing cgroup '%s' with chart id '%s' (was %s and %s)", cg->id, cg->chart_id, (cg->enabled)?"enabled":"disabled", (cg->available)?"available":"not available");

    if(cg->st_cpu)                   FUNC4(cg->st_cpu);
    if(cg->st_cpu_limit)             FUNC4(cg->st_cpu_limit);
    if(cg->st_cpu_per_core)          FUNC4(cg->st_cpu_per_core);
    if(cg->st_mem)                   FUNC4(cg->st_mem);
    if(cg->st_writeback)             FUNC4(cg->st_writeback);
    if(cg->st_mem_activity)          FUNC4(cg->st_mem_activity);
    if(cg->st_pgfaults)              FUNC4(cg->st_pgfaults);
    if(cg->st_mem_usage)             FUNC4(cg->st_mem_usage);
    if(cg->st_mem_usage_limit)       FUNC4(cg->st_mem_usage_limit);
    if(cg->st_mem_failcnt)           FUNC4(cg->st_mem_failcnt);
    if(cg->st_io)                    FUNC4(cg->st_io);
    if(cg->st_serviced_ops)          FUNC4(cg->st_serviced_ops);
    if(cg->st_throttle_io)           FUNC4(cg->st_throttle_io);
    if(cg->st_throttle_serviced_ops) FUNC4(cg->st_throttle_serviced_ops);
    if(cg->st_queued_ops)            FUNC4(cg->st_queued_ops);
    if(cg->st_merged_ops)            FUNC4(cg->st_merged_ops);

    FUNC3(cg->filename_cpuset_cpus);
    FUNC3(cg->filename_cpu_cfs_period);
    FUNC3(cg->filename_cpu_cfs_quota);
    FUNC3(cg->filename_memory_limit);
    FUNC3(cg->filename_memoryswap_limit);

    FUNC2(cg);

    FUNC3(cg->cpuacct_usage.cpu_percpu);

    FUNC3(cg->cpuacct_stat.filename);
    FUNC3(cg->cpuacct_usage.filename);

    FUNC0(cg->memory.arl_base);
    FUNC3(cg->memory.filename_detailed);
    FUNC3(cg->memory.filename_failcnt);
    FUNC3(cg->memory.filename_usage_in_bytes);
    FUNC3(cg->memory.filename_msw_usage_in_bytes);

    FUNC3(cg->io_service_bytes.filename);
    FUNC3(cg->io_serviced.filename);

    FUNC3(cg->throttle_io_service_bytes.filename);
    FUNC3(cg->throttle_io_serviced.filename);

    FUNC3(cg->io_merged.filename);
    FUNC3(cg->io_queued.filename);

    FUNC3(cg->id);
    FUNC3(cg->chart_id);
    FUNC3(cg->chart_title);

    FUNC3(cg);

    cgroup_root_count--;
}