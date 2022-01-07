
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPATHLEN ;

int php_win32_check_trailing_space(const char * path, const size_t path_len)
{
 if (path_len > MAXPATHLEN - 1) {
  return 1;
 }
 if (path) {
  if (path[0] == ' ' || path[path_len - 1] == ' ') {
   return 0;
  } else {
   return 1;
  }
 } else {
  return 0;
 }
}
