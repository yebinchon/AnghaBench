
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t PATH_MAX ;
 int realpath (char const*,char*) ;
 int snprintf (char*,size_t,char*,char*) ;

size_t os_get_abs_path(const char *path, char *abspath, size_t size)
{
 size_t min_size = size < PATH_MAX ? size : PATH_MAX;
 char newpath[PATH_MAX];
 int ret;

 if (!abspath)
  return 0;

 if (!realpath(path, newpath))
  return 0;

 ret = snprintf(abspath, min_size, "%s", newpath);
 return ret >= 0 ? ret : 0;
}
