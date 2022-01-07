
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_SLASH (char) ;

__attribute__((used)) static char * php_zip_make_relative_path(char *path, size_t path_len)
{
 char *path_begin = path;
 size_t i;

 if (path_len < 1 || path == ((void*)0)) {
  return ((void*)0);
 }

 if (IS_SLASH(path[0])) {
  return path + 1;
 }

 i = path_len;

 while (1) {
  while (i > 0 && !IS_SLASH(path[i])) {
   i--;
  }

  if (!i) {
   return path;
  }

  if (i >= 2 && (path[i -1] == '.' || path[i -1] == ':')) {

   path_begin = path + i + 1;
   break;
  }
  i--;
 }

 return path_begin;
}
