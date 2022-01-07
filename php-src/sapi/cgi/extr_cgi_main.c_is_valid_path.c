
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_SLASH (char const) ;
 scalar_t__ UNEXPECTED (int) ;

__attribute__((used)) static int is_valid_path(const char *path)
{
 const char *p = path;

 if (UNEXPECTED(!p)) {
  return 0;
 }
 if (UNEXPECTED(*p == '.') && *(p+1) == '.' && (!*(p+2) || IS_SLASH(*(p+2)))) {
  return 0;
 }
 while (*p) {
  if (IS_SLASH(*p)) {
   p++;
   if (UNEXPECTED(*p == '.')) {
    p++;
    if (UNEXPECTED(*p == '.')) {
     p++;
     if (UNEXPECTED(!*p) || UNEXPECTED(IS_SLASH(*p))) {
      return 0;
     }
    }
   }
  }
  p++;
 }
 return 1;
}
