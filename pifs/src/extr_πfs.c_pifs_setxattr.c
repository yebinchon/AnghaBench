
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FULL_PATH (char const*) ;
 int errno ;
 int full_path ;
 int setxattr (int ,char const*,char const*,size_t,int) ;

__attribute__((used)) static int pifs_setxattr(const char *path, const char *name, const char *value,
                         size_t size, int flags)
{
  FULL_PATH(path);
  int ret = setxattr(full_path, name, value, size, flags);
  return ret == -1 ? -errno : ret;
}
