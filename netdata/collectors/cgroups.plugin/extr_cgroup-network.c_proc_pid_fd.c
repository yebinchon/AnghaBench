
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int FILENAME_MAX ;
 int O_RDONLY ;
 int error (char*,char*) ;
 int open (char*,int ) ;
 int snprintfz (char*,int ,char*,char const*,int,char const*) ;

int proc_pid_fd(const char *prefix, const char *ns, pid_t pid) {
    if(!prefix) prefix = "";

    char filename[FILENAME_MAX + 1];
    snprintfz(filename, FILENAME_MAX, "%s/proc/%d/%s", prefix, (int)pid, ns);
    int fd = open(filename, O_RDONLY);

    if(fd == -1)
        error("Cannot open proc_pid_fd() file '%s'", filename);

    return fd;
}
