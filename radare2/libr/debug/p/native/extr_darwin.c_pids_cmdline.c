
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int close (int) ;
 int open (char*,int ) ;
 int read (int,char*,int) ;
 int sprintf (char*,char*,int) ;

int pids_cmdline(int pid, char *cmdline) {
        int fd;
        sprintf(cmdline, "/proc/%d/cmdline", pid);
        fd = open(cmdline, O_RDONLY);
        cmdline[0] = '\0';
        if (fd != -1) {
                read(fd, cmdline, 1024);
                cmdline[1024] = '\0';
                close(fd);
        }

        return 0;
}
