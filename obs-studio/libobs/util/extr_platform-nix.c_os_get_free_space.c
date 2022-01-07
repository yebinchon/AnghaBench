
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statvfs {scalar_t__ f_bfree; scalar_t__ f_bsize; } ;
typedef int int64_t ;


 scalar_t__ statvfs (char const*,struct statvfs*) ;

int64_t os_get_free_space(const char *path)
{
 struct statvfs info;
 int64_t ret = (int64_t)statvfs(path, &info);

 if (ret == 0)
  ret = (int64_t)info.f_bsize * (int64_t)info.f_bfree;

 return ret;
}
