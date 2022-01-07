
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statvfs {int dummy; } ;


 int FULL_PATH (char const*) ;
 int errno ;
 int full_path ;
 int statvfs (int ,struct statvfs*) ;

__attribute__((used)) static int pifs_statfs(const char *path, struct statvfs *buf)
{
  FULL_PATH(path);
  int ret = statvfs(full_path, buf);
  return ret == -1 ? -errno : ret;
}
