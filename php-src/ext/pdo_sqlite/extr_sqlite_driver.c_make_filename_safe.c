
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int efree (char*) ;
 char* estrdup (char const*) ;
 char* expand_filepath (char const*,int *) ;
 scalar_t__ memcmp (char const*,char*,int) ;
 scalar_t__ php_check_open_basedir (char*) ;

__attribute__((used)) static char *make_filename_safe(const char *filename)
{
 if (*filename && memcmp(filename, ":memory:", sizeof(":memory:"))) {
  char *fullpath = expand_filepath(filename, ((void*)0));

  if (!fullpath) {
   return ((void*)0);
  }

  if (php_check_open_basedir(fullpath)) {
   efree(fullpath);
   return ((void*)0);
  }
  return fullpath;
 }
 return estrdup(filename);
}
