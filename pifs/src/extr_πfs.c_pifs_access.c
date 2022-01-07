
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FULL_PATH (char const*) ;
 int access (int ,int) ;
 int errno ;
 int full_path ;

__attribute__((used)) static int pifs_access(const char *path, int mode)
{
  FULL_PATH(path);
  int ret = access(full_path, mode);
  return ret == -1 ? -errno : ret;
}
