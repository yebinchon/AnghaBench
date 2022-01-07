
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct TYPE_3__ {int pids_cnt; int* pids; } ;
typedef TYPE_1__ dvb_channel_t ;


 int DMX_FILTER_SIZE ;
 char* dvb_strtok_r (char*,char const*,char**) ;
 int mp_verbose (struct mp_log*,char*) ;
 scalar_t__ sscanf (char*,char*,int*,int*) ;

__attribute__((used)) static bool parse_pid_string(struct mp_log *log, char *pid_string,
                             dvb_channel_t *ptr)
{
    if (pid_string[0]) {
        int pcnt = 0;







        const char *tokens = "+,;";
        char *pidPart;
        char *savePtr = ((void*)0);
        pidPart = dvb_strtok_r(pid_string, tokens, &savePtr);
        while (pidPart != ((void*)0)) {
            if (ptr->pids_cnt >= DMX_FILTER_SIZE - 1) {
                mp_verbose(log, "Maximum number of PIDs for one channel "
                                "reached, ignoring further ones!\n");
                return pcnt > 0;
            }
            int numChars = 0;
            int pid = 0;
            pcnt += sscanf(pidPart, "%d%n", &pid, &numChars);
            if (numChars > 0) {
                ptr->pids[ptr->pids_cnt] = pid;
                ptr->pids_cnt++;
            }
            pidPart = dvb_strtok_r(((void*)0), tokens, &savePtr);
        }
        if (pcnt > 0)
            return 1;
    }
    return 0;
}
