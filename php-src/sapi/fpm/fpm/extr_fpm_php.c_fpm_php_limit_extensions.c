
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZLOG_NOTICE ;
 char** limit_extensions ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strlen (char*) ;
 int zlog (int ,char*,char*) ;

int fpm_php_limit_extensions(char *path)
{
 char **p;
 size_t path_len;

 if (!path || !limit_extensions) {
  return 0;
 }

 p = limit_extensions;
 path_len = strlen(path);
 while (p && *p) {
  size_t ext_len = strlen(*p);
  if (path_len > ext_len) {
   char *path_ext = path + path_len - ext_len;
   if (strcmp(*p, path_ext) == 0) {
    return 0;
   }
  }
  p++;
 }


 zlog(ZLOG_NOTICE, "Access to the script '%s' has been denied (see security.limit_extensions)", path);
 return 1;
}
