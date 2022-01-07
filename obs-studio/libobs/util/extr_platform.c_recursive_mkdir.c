
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MKDIR_ERROR ;
 int os_mkdir (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int recursive_mkdir(char *path)
{
 char *last_slash;
 int ret;

 ret = os_mkdir(path);
 if (ret != MKDIR_ERROR)
  return ret;

 last_slash = strrchr(path, '/');
 if (!last_slash)
  return MKDIR_ERROR;

 *last_slash = 0;
 ret = recursive_mkdir(path);
 *last_slash = '/';

 if (ret == MKDIR_ERROR)
  return MKDIR_ERROR;

 ret = os_mkdir(path);
 return ret;
}
