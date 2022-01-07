
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FULL_PATH (char const*) ;
 int errno ;
 int full_path ;
 int getxattr (int ,char const*,char*,size_t) ;

__attribute__((used)) static int pifs_getxattr(const char *path, const char *name, char *value,
                         size_t size)
{
  FULL_PATH(path);
  int ret = getxattr(full_path, name, value, size);
  return ret == -1 ? -errno : ret;
}
