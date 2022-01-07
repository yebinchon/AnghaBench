
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {scalar_t__ d_type; char* d_name; } ;
typedef scalar_t__ pid_t ;
typedef int DIR ;


 scalar_t__ DT_DIR ;
 int FILENAME_MAX ;
 int closedir (int *) ;
 int error (char*,char const*) ;
 int * opendir (char const*) ;
 scalar_t__ read_pid_from_cgroup_files (char const*) ;
 struct dirent* readdir (int *) ;
 int snprintfz (char*,int ,char*,char const*,char*) ;

pid_t read_pid_from_cgroup(const char *path) {
    pid_t pid = read_pid_from_cgroup_files(path);
    if (pid > 0) return pid;

    DIR *dir = opendir(path);
    if (!dir) {
        error("cannot read directory '%s'", path);
        return 0;
    }

    struct dirent *de = ((void*)0);
    while ((de = readdir(dir))) {
        if (de->d_type == DT_DIR
            && (
                    (de->d_name[0] == '.' && de->d_name[1] == '\0')
                    || (de->d_name[0] == '.' && de->d_name[1] == '.' && de->d_name[2] == '\0')
            ))
            continue;

        if (de->d_type == DT_DIR) {
            char filename[FILENAME_MAX + 1];
            snprintfz(filename, FILENAME_MAX, "%s/%s", path, de->d_name);
            pid = read_pid_from_cgroup(filename);
            if(pid > 0) break;
        }
    }
    closedir(dir);
    return pid;
}
