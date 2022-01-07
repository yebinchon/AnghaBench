
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_SLASH (char const) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static int is_valid_path(const char *path)
{
 const char *p;

 if (!path) {
  return 0;
 }
 p = strstr(path, "..");
 if (p) {
  if ((p == path || IS_SLASH(*(p-1))) &&
   (*(p+2) == 0 || IS_SLASH(*(p+2)))
  ) {
   return 0;
  }
  while (1) {
   p = strstr(p+1, "..");
   if (!p) {
    break;
   }
   if (IS_SLASH(*(p-1)) &&
    (*(p+2) == 0 || IS_SLASH(*(p+2)))
   ) {
     return 0;
   }
  }
 }
 return 1;
}
