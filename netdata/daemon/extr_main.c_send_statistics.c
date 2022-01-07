
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int FILE ;


 int R_OK ;
 scalar_t__ access (char*,int ) ;
 int * fgets (char*,int,int *) ;
 int freez (char*) ;
 int info (char*,char*) ;
 scalar_t__ likely (int) ;
 char* mallocz (int) ;
 int mypclose (int *,int ) ;
 int * mypopen (char*,int *) ;
 int netdata_anonymous_statistics_enabled ;
 char* netdata_configured_primary_plugins_dir ;
 char* netdata_configured_user_config_dir ;
 int sprintf (char*,char*,char*,char const*,...) ;
 int strlen (char const*) ;
 scalar_t__ unlikely (int) ;

void send_statistics( const char *action, const char *action_result, const char *action_data) {
    static char *as_script;
    if (netdata_anonymous_statistics_enabled == -1) {
        char *optout_file = mallocz(sizeof(char) * (strlen(netdata_configured_user_config_dir) +strlen(".opt-out-from-anonymous-statistics") + 2));
        sprintf(optout_file, "%s/%s", netdata_configured_user_config_dir, ".opt-out-from-anonymous-statistics");
        if (likely(access(optout_file, R_OK) != 0)) {
            as_script = mallocz(sizeof(char) * (strlen(netdata_configured_primary_plugins_dir) + strlen("anonymous-statistics.sh") + 2));
            sprintf(as_script, "%s/%s", netdata_configured_primary_plugins_dir, "anonymous-statistics.sh");
            if (unlikely(access(as_script, R_OK) != 0)) {
               netdata_anonymous_statistics_enabled=0;
               info("Anonymous statistics script %s not found.",as_script);
               freez(as_script);
            } else {
               netdata_anonymous_statistics_enabled=1;
            }
        } else {
            netdata_anonymous_statistics_enabled = 0;
            as_script = ((void*)0);
        }
        freez(optout_file);
    }
    if(!netdata_anonymous_statistics_enabled) return;
    if (!action) return;
    if (!action_result) action_result="";
    if (!action_data) action_data="";
    char *command_to_run=mallocz(sizeof(char) * (strlen(action) + strlen(action_result) + strlen(action_data) + strlen(as_script) + 10));
    pid_t command_pid;

    sprintf(command_to_run,"%s '%s' '%s' '%s'", as_script, action, action_result, action_data);
    info("%s", command_to_run);

    FILE *fp = mypopen(command_to_run, &command_pid);
    if(fp) {
        char buffer[100 + 1];
        while (fgets(buffer, 100, fp) != ((void*)0));
        mypclose(fp, command_pid);
    }
    freez(command_to_run);
}
