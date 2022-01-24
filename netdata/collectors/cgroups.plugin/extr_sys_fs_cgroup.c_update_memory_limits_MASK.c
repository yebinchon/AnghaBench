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
struct cgroup {int options; int /*<<< orphan*/  id; int /*<<< orphan*/  st_mem_usage; } ;
typedef  int /*<<< orphan*/  calculated_number ;
typedef  int /*<<< orphan*/  RRDSETVAR ;

/* Variables and functions */
 int CGROUP_OPTIONS_IS_UNIFIED ; 
 unsigned long long UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,char*,int) ; 
 scalar_t__ FUNC3 (char*,unsigned long long*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static inline int FUNC9(char **filename, RRDSETVAR **chart_var, unsigned long long *value, const char *chart_var_name, struct cgroup *cg) {
    if(*filename) {
        if(FUNC8(!*chart_var)) {
            *chart_var = FUNC4(cg->st_mem_usage, chart_var_name);
            if(!*chart_var) {
                FUNC0("Cannot create cgroup %s chart variable '%s'. Will not update its limit anymore.", cg->id, chart_var_name);
                FUNC1(*filename);
                *filename = NULL;
            }
        }

        if(*filename && *chart_var) {
            if(!(cg->options & CGROUP_OPTIONS_IS_UNIFIED)) {
                if(FUNC3(*filename, value)) {
                    FUNC0("Cannot refresh cgroup %s memory limit by reading '%s'. Will not update its limit anymore.", cg->id, *filename);
                    FUNC1(*filename);
                    *filename = NULL;
                }
                else {
                    FUNC5(*chart_var, (calculated_number)(*value / (1024 * 1024)));
                    return 1;
                }
            } else {
                char buffer[30 + 1];
                int ret = FUNC2(*filename, buffer, 30);
                if(ret) {
                    FUNC0("Cannot refresh cgroup %s memory limit by reading '%s'. Will not update its limit anymore.", cg->id, *filename);
                    FUNC1(*filename);
                    *filename = NULL;
                    return 0;
                }
                char *s = "max\n\0";
                if(FUNC7(s, buffer) == 0){
                    *value = UINT64_MAX;
                    FUNC5(*chart_var, (calculated_number)(*value / (1024 * 1024)));
                    return 1;
                }
                *value = FUNC6(buffer);
                FUNC5(*chart_var, (calculated_number)(*value / (1024 * 1024)));
                return 1;
            }
        }
    }
    return 0;
}