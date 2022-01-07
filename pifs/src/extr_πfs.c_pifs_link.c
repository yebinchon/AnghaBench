
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FULL_PATH (char const*) ;
 int errno ;
 int full_path ;
 int link (char const*,int ) ;

__attribute__((used)) static int pifs_link(const char *oldpath, const char *newpath)
{
  FULL_PATH(newpath);
  int ret = link(oldpath, full_path);
  return ret == -1 ? -errno : ret;
}
