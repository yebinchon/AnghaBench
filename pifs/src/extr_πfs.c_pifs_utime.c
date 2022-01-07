
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utimbuf {int dummy; } ;


 int FULL_PATH (char const*) ;
 int errno ;
 int full_path ;
 int utime (int ,struct utimbuf*) ;

__attribute__((used)) static int pifs_utime(const char *path, struct utimbuf *times)
{
  FULL_PATH(path);
  int ret = utime(full_path, times);
  return ret == -1 ? -errno : ret;
}
