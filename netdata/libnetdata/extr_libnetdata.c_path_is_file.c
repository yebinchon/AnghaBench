
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef size_t ssize_t ;


 int FILENAME_MAX ;
 int S_IFLNK ;
 int S_IFMT ;
 int S_IFREG ;
 int freez (char*) ;
 size_t readlink (char*,char*,int ) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* strdupz (char*) ;
 char* strdupz_path_subpath (char const*,char const*) ;

int path_is_file(const char *path, const char *subpath) {
    char *s = strdupz_path_subpath(path, subpath);

    size_t max_links = 100;

    int is_file = 0;
    struct stat statbuf;
    while(max_links-- && stat(s, &statbuf) == 0) {
        if((statbuf.st_mode & S_IFMT) == S_IFREG) {
            is_file = 1;
            break;
        }
        else if((statbuf.st_mode & S_IFMT) == S_IFLNK) {
            char buffer[FILENAME_MAX + 1];
            ssize_t l = readlink(s, buffer, FILENAME_MAX);
            if(l > 0) {
                buffer[l] = '\0';
                freez(s);
                s = strdupz(buffer);
                continue;
            }
            else {
                is_file = 0;
                break;
            }
        }
        else {
            is_file = 0;
            break;
        }
    }

    freez(s);
    return is_file;
}
