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
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  R_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int netdata_anonymous_statistics_enabled ; 
 char* netdata_configured_primary_plugins_dir ; 
 char* netdata_configured_user_config_dir ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,char const*,...) ; 
 int FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (int) ; 

void FUNC11( const char *action, const char *action_result, const char *action_data) {
    static char *as_script;
    if (netdata_anonymous_statistics_enabled == -1) {
        char *optout_file = FUNC5(sizeof(char) * (FUNC9(netdata_configured_user_config_dir) +FUNC9(".opt-out-from-anonymous-statistics") + 2));
        FUNC8(optout_file, "%s/%s", netdata_configured_user_config_dir, ".opt-out-from-anonymous-statistics");
        if (FUNC4(FUNC0(optout_file, R_OK) != 0)) {
            as_script = FUNC5(sizeof(char) * (FUNC9(netdata_configured_primary_plugins_dir) + FUNC9("anonymous-statistics.sh") + 2));
            FUNC8(as_script, "%s/%s", netdata_configured_primary_plugins_dir, "anonymous-statistics.sh");
            if (FUNC10(FUNC0(as_script, R_OK) != 0)) {
               netdata_anonymous_statistics_enabled=0;
               FUNC3("Anonymous statistics script %s not found.",as_script);
               FUNC2(as_script);
            } else {
               netdata_anonymous_statistics_enabled=1;
            }
        } else {
            netdata_anonymous_statistics_enabled = 0;
            as_script = NULL;
        }
        FUNC2(optout_file);
    }
    if(!netdata_anonymous_statistics_enabled) return;
    if (!action) return;
    if (!action_result) action_result="";
    if (!action_data) action_data="";
    char *command_to_run=FUNC5(sizeof(char) * (FUNC9(action) + FUNC9(action_result) + FUNC9(action_data) + FUNC9(as_script) + 10));
    pid_t command_pid;

    FUNC8(command_to_run,"%s '%s' '%s' '%s'", as_script, action, action_result, action_data);
    FUNC3("%s", command_to_run);

    FILE *fp = FUNC7(command_to_run, &command_pid);
    if(fp) {
        char buffer[100 + 1];
        while (FUNC1(buffer, 100, fp) != NULL);
        FUNC6(fp, command_pid);
    }
    FUNC2(command_to_run);
}