
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
typedef int int64_t ;
struct TYPE_2__ {int QuadPart; } ;
typedef TYPE_1__ ULARGE_INTEGER ;
typedef int PULARGE_INTEGER ;
typedef scalar_t__ BOOL ;


 scalar_t__ GetDiskFreeSpaceExW (int *,int ,int *,int *) ;
 scalar_t__ os_get_abs_path (char const*,char*,int) ;
 scalar_t__ os_utf8_to_wcs (char*,int ,int *,int) ;

int64_t os_get_free_space(const char *path)
{
 ULARGE_INTEGER remainingSpace;
 char abs_path[512];
 wchar_t w_abs_path[512];

 if (os_get_abs_path(path, abs_path, 512) > 0) {
  if (os_utf8_to_wcs(abs_path, 0, w_abs_path, 512) > 0) {
   BOOL success = GetDiskFreeSpaceExW(
    w_abs_path, (PULARGE_INTEGER)&remainingSpace,
    ((void*)0), ((void*)0));
   if (success)
    return (int64_t)remainingSpace.QuadPart;
  }
 }

 return -1;
}
