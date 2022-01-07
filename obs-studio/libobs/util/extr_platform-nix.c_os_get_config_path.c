
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcrash (char*) ;
 char* getenv (char*) ;
 int snprintf (char*,size_t,char*,char*,...) ;

int os_get_config_path(char *dst, size_t size, const char *name)
{
 char *path_ptr = getenv("HOME");
 if (path_ptr == ((void*)0))
  bcrash("Could not get $HOME\n");

 if (!name || !*name)
  return snprintf(dst, size, "%s", path_ptr);
 else
  return snprintf(dst, size, "%s/.%s", path_ptr, name);

}
