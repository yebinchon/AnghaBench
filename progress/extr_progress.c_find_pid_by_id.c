
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_3__ {int pid; int name; } ;
typedef TYPE_1__ pidinfo_t ;
typedef int pid_t ;


 int MAXPATHLEN ;
 char* PROC_PATH ;
 int basename (char*) ;
 int readlink (char*,char*,int ) ;
 int snprintf (char*,int ,char*,char*,int) ;
 int strcpy (int ,int ) ;

int find_pid_by_id(pid_t pid, pidinfo_t *pid_list)
{
char fullpath_exe[MAXPATHLEN + 1];
char exe[MAXPATHLEN + 1];
ssize_t len;

snprintf(fullpath_exe, MAXPATHLEN, "%s/%i/exe", PROC_PATH, pid);

len=readlink(fullpath_exe, exe, MAXPATHLEN);
if (len != -1)
    exe[len] = 0;
else
    return 0;

pid_list[0].pid = pid;
strcpy(pid_list[0].name, basename(exe));
return 1;
}
