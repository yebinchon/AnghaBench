
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {scalar_t__ d_type; char* d_name; } ;
typedef int DIR ;


 scalar_t__ DT_DIR ;
 int FILENAME_MAX ;
 int closedir (int *) ;
 int error (char*,char const*,...) ;
 int info (char*,char const*,...) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 int rmdir (char const*) ;
 int snprintfz (char*,int ,char*,char const*,char*) ;
 scalar_t__ unlikely (int) ;
 int unlink (char*) ;

int recursively_delete_dir(const char *path, const char *reason) {
    DIR *dir = opendir(path);
    if(!dir) {
        error("Cannot read %s directory to be deleted '%s'", reason?reason:"", path);
        return -1;
    }

    int ret = 0;
    struct dirent *de = ((void*)0);
    while((de = readdir(dir))) {
        if(de->d_type == DT_DIR
           && (
                   (de->d_name[0] == '.' && de->d_name[1] == '\0')
                   || (de->d_name[0] == '.' && de->d_name[1] == '.' && de->d_name[2] == '\0')
           ))
            continue;

        char fullpath[FILENAME_MAX + 1];
        snprintfz(fullpath, FILENAME_MAX, "%s/%s", path, de->d_name);

        if(de->d_type == DT_DIR) {
            int r = recursively_delete_dir(fullpath, reason);
            if(r > 0) ret += r;
            continue;
        }

        info("Deleting %s file '%s'", reason?reason:"", fullpath);
        if(unlikely(unlink(fullpath) == -1))
            error("Cannot delete %s file '%s'", reason?reason:"", fullpath);
        else
            ret++;
    }

    info("Deleting empty directory '%s'", path);
    if(unlikely(rmdir(path) == -1))
        error("Cannot delete empty directory '%s'", path);
    else
        ret++;

    closedir(dir);

    return ret;
}
