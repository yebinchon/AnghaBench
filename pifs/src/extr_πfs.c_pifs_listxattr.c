
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FULL_PATH (char const*) ;
 int errno ;
 int full_path ;
 int listxattr (int ,char*,size_t) ;

__attribute__((used)) static int pifs_listxattr(const char *path, char *list, size_t size)
{
  FULL_PATH(path);
  int ret = listxattr(full_path, list, size);
  return ret == -1 ? -errno : ret;
}
