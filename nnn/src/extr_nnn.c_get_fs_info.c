
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statvfs {size_t f_blocks; int f_bsize; size_t f_bavail; int f_frsize; } ;


 int CAPACITY ;
 size_t ffs (int) ;
 int statvfs (char const*,struct statvfs*) ;

__attribute__((used)) static size_t get_fs_info(const char *path, bool type)
{
 struct statvfs svb;

 if (statvfs(path, &svb) == -1)
  return 0;

 if (type == CAPACITY)
  return svb.f_blocks << ffs((int)(svb.f_bsize >> 1));

 return svb.f_bavail << ffs((int)(svb.f_frsize >> 1));
}
