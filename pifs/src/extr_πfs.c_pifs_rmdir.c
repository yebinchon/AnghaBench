
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FULL_PATH (char const*) ;
 int errno ;
 int full_path ;
 int rmdir (int ) ;

__attribute__((used)) static int pifs_rmdir(const char *path)
{
  FULL_PATH(path);
  int ret = rmdir(full_path);
  return ret == -1 ? -errno : ret;
}
