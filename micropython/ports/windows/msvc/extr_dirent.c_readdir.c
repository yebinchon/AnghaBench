
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dirent {int d_type; scalar_t__ d_name; } ;
struct TYPE_5__ {int dwFileAttributes; scalar_t__ cFileName; } ;
struct TYPE_4__ {struct dirent result; TYPE_3__ findData; int findHandle; } ;
typedef TYPE_1__ DIR ;


 int EBADF ;
 scalar_t__ FindNextFile (int ,TYPE_3__*) ;
 int errno ;

struct dirent *readdir(DIR *dir) {
    if (!dir) {
        errno = EBADF;
        return ((void*)0);
    }


    if (!dir->result.d_name || FindNextFile(dir->findHandle, &dir->findData)) {
        dir->result.d_name = dir->findData.cFileName;
        dir->result.d_type = dir->findData.dwFileAttributes;
        return &dir->result;
    }

    return ((void*)0);
}
