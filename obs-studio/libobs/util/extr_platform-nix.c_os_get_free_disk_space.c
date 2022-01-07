
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct statvfs {scalar_t__ f_bavail; scalar_t__ f_frsize; } ;


 scalar_t__ statvfs (char const*,struct statvfs*) ;

uint64_t os_get_free_disk_space(const char *dir)
{
 struct statvfs info;
 if (statvfs(dir, &info) != 0)
  return 0;

 return (uint64_t)info.f_frsize * (uint64_t)info.f_bavail;
}
