
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct dirent {char* d_name; } ;
typedef size_t ssize_t ;
typedef int path ;
typedef int own_fd ;
typedef int DIR ;


 int PATH_MAX ;
 scalar_t__ S_ISDIR (int ) ;
 int closedir (int *) ;
 int dirfd (int *) ;
 int lwan_status_critical (char*,...) ;
 int lwan_status_critical_perror (char*,...) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 size_t readlinkat (int,char*,char*,int) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ streq (char*,char*) ;

__attribute__((used)) static void abort_on_open_directories(void)
{




    DIR *dir = opendir("/proc/self/fd");
    struct dirent *ent;
    char own_fd[3 * sizeof(int)];
    int ret;

    if (!dir) {
        lwan_status_critical_perror(
            "Could not determine if there are open directory fds");
    }

    ret = snprintf(own_fd, sizeof(own_fd), "%d", dirfd(dir));
    if (ret < 0 || ret >= (int)sizeof(own_fd)) {
        lwan_status_critical("Could not get descriptor of /proc/self/fd");
    }

    while ((ent = readdir(dir))) {
        char path[PATH_MAX];
        struct stat st;
        ssize_t len;

        if (streq(ent->d_name, own_fd))
            continue;
        if (streq(ent->d_name, ".") || streq(ent->d_name, ".."))
            continue;

        len = readlinkat(dirfd(dir), ent->d_name, path, sizeof(path));
        if (len < 0) {
            lwan_status_critical_perror(
                "Could not get information about fd %s", ent->d_name);
        }
        path[len] = '\0';

        if (path[0] != '/') {




            continue;
        }

        if (stat(path, &st) < 0) {
            lwan_status_critical_perror(
                "Could not get information about open file: %s", path);
        }

        if (S_ISDIR(st.st_mode)) {
            closedir(dir);

            lwan_status_critical(
                "The directory '%s' is open (fd %s), can't chroot",
                path, ent->d_name);
            return;
        }
    }

    closedir(dir);
}
