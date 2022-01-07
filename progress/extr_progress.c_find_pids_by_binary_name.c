
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct dirent {char* d_name; } ;
typedef int ssize_t ;
struct TYPE_3__ {int name; int pid; } ;
typedef TYPE_1__ pidinfo_t ;
typedef int DIR ;


 int EXIT_FAILURE ;
 int MAXPATHLEN ;
 char* PROC_PATH ;
 scalar_t__ S_ISDIR (int ) ;
 int atol (char*) ;
 int basename (char*) ;
 int closedir (int *) ;
 int exit (int ) ;
 scalar_t__ flag_debug ;
 scalar_t__ is_numeric (char*) ;
 int nfprintf (int ,char*,char*) ;
 int nperror (char*) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int readlink (char*,char*,int ) ;
 int snprintf (char*,int ,char*,char*,...) ;
 int stat (char*,struct stat*) ;
 int stderr ;
 int strcmp (int ,char*) ;
 int strcpy (int ,char*) ;

int find_pids_by_binary_name(char *bin_name, pidinfo_t *pid_list, int max_pids)
{
DIR *proc;
struct dirent *direntp;
struct stat stat_buf;
char fullpath_dir[MAXPATHLEN + 1];
char fullpath_exe[MAXPATHLEN + 1];
char exe[MAXPATHLEN + 1];
ssize_t len;
int pid_count=0;

proc=opendir(PROC_PATH);
if (!proc) {
    nperror("opendir");
    nfprintf(stderr,"Can't open %s\n",PROC_PATH);
    exit(EXIT_FAILURE);
}

while ((direntp = readdir(proc)) != ((void*)0)) {
    snprintf(fullpath_dir, MAXPATHLEN, "%s/%s", PROC_PATH, direntp->d_name);

    if (stat(fullpath_dir, &stat_buf) == -1) {
        if (flag_debug)
            nperror("stat (find_pids_by_binary_name)");
        continue;
    }

    if ((S_ISDIR(stat_buf.st_mode) && is_numeric(direntp->d_name))) {
        snprintf(fullpath_exe, MAXPATHLEN, "%s/exe", fullpath_dir);
        len=readlink(fullpath_exe, exe, MAXPATHLEN);
        if (len != -1)
            exe[len] = 0;
        else {


            continue;
        }

        if (!strcmp(basename(exe), bin_name)) {
            pid_list[pid_count].pid = atol(direntp->d_name);
            strcpy(pid_list[pid_count].name, bin_name);
            pid_count++;
            if(pid_count == max_pids)
                break;
        }
    }
}

closedir(proc);
return pid_count;
}
