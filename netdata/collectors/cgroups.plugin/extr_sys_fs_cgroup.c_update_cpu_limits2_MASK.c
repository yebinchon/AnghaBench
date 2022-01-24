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
struct cgroup {char* filename_cpu_cfs_quota; int cpu_cfs_period; int cpuset_cpus; int cpu_cfs_quota; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  procfile ;

/* Variables and functions */
 int /*<<< orphan*/  D_CGROUP ; 
 int /*<<< orphan*/  PROCFILE_FLAG_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 () ; 
 unsigned long FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static inline void FUNC11(struct cgroup *cg) {
    if(cg->filename_cpu_cfs_quota){
        static procfile *ff = NULL;

        ff = FUNC7(ff, cg->filename_cpu_cfs_quota, NULL, PROCFILE_FLAG_DEFAULT);
        if(FUNC10(!ff)) {
            goto cpu_limits2_err;
        }

        ff = FUNC6(ff);
        if(FUNC10(!ff)) {
            goto cpu_limits2_err;
        }

        unsigned long lines = FUNC4(ff);

        if (FUNC10(lines < 1)) {
            FUNC1("CGROUP: file '%s' should have 1 lines.", cg->filename_cpu_cfs_quota);
            return;
        }

        cg->cpu_cfs_period = FUNC8(FUNC5(ff, 0, 1));
        cg->cpuset_cpus = FUNC3();

        char *s = "max\n\0";
        if(FUNC9(s, FUNC5(ff, 0, 0)) == 0){
            cg->cpu_cfs_quota = cg->cpu_cfs_period * cg->cpuset_cpus;
        } else {
            cg->cpu_cfs_quota = FUNC8(FUNC5(ff, 0, 0));
        }
        FUNC0(D_CGROUP, "CPU limits values: %llu %llu %llu", cg->cpu_cfs_period, cg->cpuset_cpus, cg->cpu_cfs_quota);
        return;

cpu_limits2_err:
        FUNC1("Cannot refresh cgroup %s cpu limit by reading '%s'. Will not update its limit anymore.", cg->id, cg->filename_cpu_cfs_quota);
        FUNC2(cg->filename_cpu_cfs_quota);
        cg->filename_cpu_cfs_quota = NULL;

    }
}