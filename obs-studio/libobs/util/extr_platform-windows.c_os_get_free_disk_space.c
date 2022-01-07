
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
typedef int uint64_t ;
struct TYPE_3__ {int QuadPart; } ;
typedef TYPE_1__ ULARGE_INTEGER ;


 int GetDiskFreeSpaceExW (int *,TYPE_1__*,int *,int *) ;
 int bfree (int *) ;
 int os_utf8_to_wcs_ptr (char const*,int ,int **) ;

uint64_t os_get_free_disk_space(const char *dir)
{
 wchar_t *wdir = ((void*)0);
 if (!os_utf8_to_wcs_ptr(dir, 0, &wdir))
  return 0;

 ULARGE_INTEGER free;
 bool success = !!GetDiskFreeSpaceExW(wdir, &free, ((void*)0), ((void*)0));
 bfree(wdir);

 return success ? free.QuadPart : 0;
}
