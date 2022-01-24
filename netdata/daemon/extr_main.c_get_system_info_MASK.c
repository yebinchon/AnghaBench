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
struct rrdhost_system_info {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  R_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ *) ; 
 char* netdata_configured_primary_plugins_dir ; 
 int FUNC7 (struct rrdhost_system_info*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*,char*) ; 
 int FUNC11 (char*) ; 
 scalar_t__ FUNC12 (int) ; 

int FUNC13(struct rrdhost_system_info *system_info) {
    char *script;
    script = FUNC4(sizeof(char) * (FUNC11(netdata_configured_primary_plugins_dir) + FUNC11("system-info.sh") + 2));
    FUNC10(script, "%s/%s", netdata_configured_primary_plugins_dir, "system-info.sh");
    if (FUNC12(FUNC0(script, R_OK) != 0)) {
        FUNC3("System info script %s not found.",script);
        FUNC2(script);
        return 1;
    }

    pid_t command_pid;

    FUNC3("Executing %s", script);

    FILE *fp = FUNC6(script, &command_pid);
    if(fp) {
        char buffer[200 + 1];
        while (FUNC1(buffer, 200, fp) != NULL) {
            char *name=buffer;
            char *value=buffer;
            while (*value && *value != '=') value++;
            if (*value=='=') {
                *value='\0';
                value++;
                if (FUNC11(value)>1) {
                    char *newline = value + FUNC11(value) - 1;
                    (*newline) = '\0';
                }
                char n[51], v[101];
                FUNC9(n, 50,"%s",name);
                FUNC9(v, 100,"%s",value);
                if(FUNC12(FUNC7(system_info, n, v))) {
                    FUNC3("Unexpected environment variable %s=%s", n, v);
                }
                else {
                    FUNC3("%s=%s", n, v);
                    FUNC8(n, v, 1);
                }
            }
        }
        FUNC5(fp, command_pid);
    }
    FUNC2(script);
    return 0;
}