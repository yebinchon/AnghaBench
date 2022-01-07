
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct os_dirent {int directory; int d_name; } ;
struct TYPE_6__ {int cFileName; } ;
struct TYPE_5__ {int first; struct os_dirent out; TYPE_3__ wfd; int handle; } ;
typedef TYPE_1__ os_dir_t ;


 int FindNextFileW (int ,TYPE_3__*) ;
 int is_dir (TYPE_3__*) ;
 int os_wcs_to_utf8 (int ,int ,int ,int) ;

struct os_dirent *os_readdir(os_dir_t *dir)
{
 if (!dir)
  return ((void*)0);

 if (dir->first) {
  dir->first = 0;
 } else {
  if (!FindNextFileW(dir->handle, &dir->wfd))
   return ((void*)0);
 }

 os_wcs_to_utf8(dir->wfd.cFileName, 0, dir->out.d_name,
         sizeof(dir->out.d_name));

 dir->out.directory = is_dir(&dir->wfd);

 return &dir->out;
}
