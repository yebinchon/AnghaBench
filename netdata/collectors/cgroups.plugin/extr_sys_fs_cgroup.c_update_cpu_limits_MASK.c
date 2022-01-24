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
struct cgroup {unsigned long long cpuset_cpus; unsigned long long cpu_cfs_period; unsigned long long cpu_cfs_quota; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 unsigned long long FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (unsigned long long) ; 
 char* FUNC5 (size_t) ; 
 int FUNC6 (char*,char*,size_t) ; 
 int FUNC7 (char*,unsigned long long*) ; 

__attribute__((used)) static inline void FUNC8(char **filename, unsigned long long *value, struct cgroup *cg) {
    if(*filename) {
        int ret = -1;

        if(value == &cg->cpuset_cpus) {
            static char *buf = NULL;
            static size_t buf_size = 0;

            if(!buf) {
                buf_size = 100U + 6 * FUNC3(); // taken from kernel/cgroup/cpuset.c
                buf = FUNC5(buf_size + 1);
            }

            ret = FUNC6(*filename, buf, buf_size);

            if(!ret) {
                char *s = buf;
                unsigned long long ncpus = 0;

                // parse the cpuset string and calculate the number of cpus the cgroup is allowed to use
                while(*s) {
                    unsigned long long n = FUNC0(&s);
                    if(*s == ',') {
                        s++;
                        ncpus++;
                        continue;
                    }
                    if(*s == '-') {
                        s++;
                        unsigned long long m = FUNC0(&s);
                        ncpus += m - n + 1; // calculate the number of cpus in the region
                    }
                    s++;
                }

                if(FUNC4(ncpus)) *value = ncpus;
            }
        }
        else if(value == &cg->cpu_cfs_period) {
            ret = FUNC7(*filename, value);
        }
        else if(value == &cg->cpu_cfs_quota) {
            ret = FUNC7(*filename, value);
        }
        else ret = -1;

        if(ret) {
            FUNC1("Cannot refresh cgroup %s cpu limit by reading '%s'. Will not update its limit anymore.", cg->id, *filename);
            FUNC2(*filename);
            *filename = NULL;
        }
    }
}