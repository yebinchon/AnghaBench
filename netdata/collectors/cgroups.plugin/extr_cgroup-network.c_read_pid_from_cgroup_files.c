
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int FILENAME_MAX ;
 scalar_t__ read_pid_from_cgroup_file (char*) ;
 int snprintfz (char*,int ,char*,char const*) ;

pid_t read_pid_from_cgroup_files(const char *path) {
    char filename[FILENAME_MAX + 1];

    snprintfz(filename, FILENAME_MAX, "%s/cgroup.procs", path);
    pid_t pid = read_pid_from_cgroup_file(filename);
    if(pid > 0) return pid;

    snprintfz(filename, FILENAME_MAX, "%s/tasks", path);
    return read_pid_from_cgroup_file(filename);
}
