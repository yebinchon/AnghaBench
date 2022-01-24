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
typedef  scalar_t__ uint32_t ;
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
 char* FUNC3 (int /*<<< orphan*/ *,unsigned long,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*) ; 
 void* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 scalar_t__ system_hash ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ user_hash ; 

__attribute__((used)) static inline void FUNC10(struct cpuacct_stat *cp) {
    static procfile *ff = NULL;

    if(FUNC1(cp->filename)) {
        ff = FUNC5(ff, cp->filename, NULL, PROCFILE_FLAG_DEFAULT);
        if(FUNC9(!ff)) {
            cp->updated = 0;
            cgroups_check = 1;
            return;
        }

        ff = FUNC4(ff);
        if(FUNC9(!ff)) {
            cp->updated = 0;
            cgroups_check = 1;
            return;
        }

        unsigned long i, lines = FUNC2(ff);

        if(FUNC9(lines < 1)) {
            FUNC0("CGROUP: file '%s' should have 1+ lines.", cp->filename);
            cp->updated = 0;
            return;
        }

        for(i = 0; i < lines ; i++) {
            char *s = FUNC3(ff, i, 0);
            uint32_t hash = FUNC6(s);

            if(FUNC9(hash == user_hash && !FUNC8(s, "user")))
                cp->user = FUNC7(FUNC3(ff, i, 1));

            else if(FUNC9(hash == system_hash && !FUNC8(s, "system")))
                cp->system = FUNC7(FUNC3(ff, i, 1));
        }

        cp->updated = 1;

        if(FUNC9(cp->enabled == CONFIG_BOOLEAN_AUTO &&
                    (cp->user || cp->system || netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES)))
            cp->enabled = CONFIG_BOOLEAN_YES;
    }
}