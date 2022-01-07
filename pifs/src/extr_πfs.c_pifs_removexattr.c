
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FULL_PATH (char const*) ;
 int errno ;
 int full_path ;
 int removexattr (int ,char const*) ;

__attribute__((used)) static int pifs_removexattr(const char *path, const char *name)
{
  FULL_PATH(path);
  int ret = removexattr(full_path, name);
  return ret == -1 ? -errno : ret;
}
