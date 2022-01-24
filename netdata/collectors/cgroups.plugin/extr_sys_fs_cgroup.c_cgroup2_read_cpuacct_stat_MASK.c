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
struct cpuacct_stat {int updated; scalar_t__ enabled; void* system; void* user; int /*<<< orphan*/  filename; } ;
typedef  int /*<<< orphan*/  procfile ;

/* Variables and functions */
 scalar_t__ CONFIG_BOOLEAN_AUTO ; 
 scalar_t__ CONFIG_BOOLEAN_YES ; 
 int /*<<< orphan*/  PROCFILE_FLAG_DEFAULT ; 
 int cgroups_check ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ netdata_zero_metrics_enabled ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static inline void FUNC8(struct cpuacct_stat *cp) {
    static procfile *ff = NULL;

    if(FUNC1(cp->filename)) {
        ff = FUNC5(ff, cp->filename, NULL, PROCFILE_FLAG_DEFAULT);
        if(FUNC7(!ff)) {
            cp->updated = 0;
            cgroups_check = 1;
            return;
        }

        ff = FUNC4(ff);
        if(FUNC7(!ff)) {
            cp->updated = 0;
            cgroups_check = 1;
            return;
        }

        unsigned long lines = FUNC2(ff);

        if(FUNC7(lines < 3)) {
            FUNC0("CGROUP: file '%s' should have 3+ lines.", cp->filename);
            cp->updated = 0;
            return;
        }

        cp->user = FUNC6(FUNC3(ff, 1, 1));
        cp->system = FUNC6(FUNC3(ff, 2, 1));

        cp->updated = 1;

        if(FUNC7(cp->enabled == CONFIG_BOOLEAN_AUTO &&
                    (cp->user || cp->system || netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES)))
            cp->enabled = CONFIG_BOOLEAN_YES;
    }
}