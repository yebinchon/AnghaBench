
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_3__ {char* filename; int fd; } ;
typedef TYPE_1__ procfile ;


 int FILENAME_MAX ;
 int readlink (char*,char*,int ) ;
 int snprintfz (char*,int ,char*,int ) ;
 scalar_t__ unlikely (int) ;

char *procfile_filename(procfile *ff) {
    if(ff->filename[0]) return ff->filename;

    char buffer[FILENAME_MAX + 1];
    snprintfz(buffer, FILENAME_MAX, "/proc/self/fd/%d", ff->fd);

    ssize_t l = readlink(buffer, ff->filename, FILENAME_MAX);
    if(unlikely(l == -1))
        snprintfz(ff->filename, FILENAME_MAX, "unknown filename for fd %d", ff->fd);
    else
        ff->filename[l] = '\0';




    return ff->filename;
}
