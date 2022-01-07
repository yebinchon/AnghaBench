
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef int FILE ;


 scalar_t__ atoi (char*) ;
 int error (char*,char const*) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 char* fgets (char*,int,int *) ;
 int info (char*,scalar_t__,char const*) ;
 int open (char const*,int ) ;
 int procfile_open_flags ;

pid_t read_pid_from_cgroup_file(const char *filename) {
    int fd = open(filename, procfile_open_flags);
    if(fd == -1) {
        error("Cannot open pid_from_cgroup() file '%s'.", filename);
        return 0;
    }

    FILE *fp = fdopen(fd, "r");
    if(!fp) {
        error("Cannot upgrade fd to fp for file '%s'.", filename);
        return 0;
    }

    char buffer[100 + 1];
    pid_t pid = 0;
    char *s;
    while((s = fgets(buffer, 100, fp))) {
        buffer[100] = '\0';
        pid = atoi(s);
        if(pid > 0) break;
    }

    fclose(fp);





    return pid;
}
