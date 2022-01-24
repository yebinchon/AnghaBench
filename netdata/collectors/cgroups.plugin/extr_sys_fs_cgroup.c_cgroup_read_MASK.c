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
struct cgroup {int options; int /*<<< orphan*/  memory; int /*<<< orphan*/  cpuacct_stat; int /*<<< orphan*/  io_serviced; int /*<<< orphan*/  io_service_bytes; int /*<<< orphan*/  io_queued; int /*<<< orphan*/  io_merged; int /*<<< orphan*/  throttle_io_serviced; int /*<<< orphan*/  throttle_io_service_bytes; int /*<<< orphan*/  cpuacct_usage; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int CGROUP_OPTIONS_IS_UNIFIED ; 
 int /*<<< orphan*/  D_CGROUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC7(struct cgroup *cg) {
    FUNC6(D_CGROUP, "reading metrics for cgroups '%s'", cg->id);
    if(!(cg->options & CGROUP_OPTIONS_IS_UNIFIED)) {
        FUNC3(&cg->cpuacct_stat);
        FUNC4(&cg->cpuacct_usage);
        FUNC5(&cg->memory, 0);
        FUNC2(&cg->io_service_bytes);
        FUNC2(&cg->io_serviced);
        FUNC2(&cg->throttle_io_service_bytes);
        FUNC2(&cg->throttle_io_serviced);
        FUNC2(&cg->io_merged);
        FUNC2(&cg->io_queued);
    }
    else {
        //TODO: io_service_bytes and io_serviced use same file merge into 1 function
        FUNC0(&cg->io_service_bytes, 0);
        FUNC0(&cg->io_serviced, 4);
        FUNC1(&cg->cpuacct_stat);
        FUNC5(&cg->memory, 1);
    }
}