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
struct cgroup {int pending_renames; int /*<<< orphan*/  chart_id; int /*<<< orphan*/  hash_chart; int /*<<< orphan*/  chart_title; scalar_t__ enabled; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CGROUP_CHARTID_LINE_MAX ; 
 int /*<<< orphan*/  D_CGROUP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  cgroups_rename_script ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC11 (char*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static inline void FUNC13(struct cgroup *cg) {
    FUNC2(D_CGROUP, "looking for the name of cgroup '%s' with chart id '%s' and title '%s'", cg->id, cg->chart_id, cg->chart_title);

    pid_t cgroup_pid;
    char command[CGROUP_CHARTID_LINE_MAX + 1];

    FUNC10(command, CGROUP_CHARTID_LINE_MAX, "exec %s '%s'", cgroups_rename_script, cg->chart_id);

    FUNC2(D_CGROUP, "executing command \"%s\" for cgroup '%s'", command, cg->chart_id);
    FILE *fp = FUNC8(command, &cgroup_pid);
    if(fp) {
        // debug(D_CGROUP, "reading from command '%s' for cgroup '%s'", command, cg->id);
        char buffer[CGROUP_CHARTID_LINE_MAX + 1];
        char *s = FUNC4(buffer, CGROUP_CHARTID_LINE_MAX, fp);
        // debug(D_CGROUP, "closing command for cgroup '%s'", cg->id);
        int name_error = FUNC7(fp, cgroup_pid);
        // debug(D_CGROUP, "closed command for cgroup '%s'", cg->id);

        if(s && *s && *s != '\n') {
            FUNC2(D_CGROUP, "cgroup '%s' should be renamed to '%s'", cg->chart_id, s);

            s = FUNC11(s);
            if (s) {
                if(FUNC6(name_error==0))
                    cg->pending_renames = 0;
                else if (FUNC12(name_error==3)) {
                    FUNC2(D_CGROUP, "cgroup '%s' disabled based due to rename command output", cg->chart_id);
                    cg->enabled = 0;
                }

                if(FUNC6(cg->pending_renames < 2)) {
                    FUNC5(cg->chart_title);
                    cg->chart_title = FUNC1(s);

                    FUNC5(cg->chart_id);
                    cg->chart_id = FUNC0(s);
                    cg->hash_chart = FUNC9(cg->chart_id);
                }
            }
        }
    }
    else
        FUNC3("CGROUP: cannot popen(\"%s\", \"r\").", command);
}