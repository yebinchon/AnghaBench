
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_long ;


 scalar_t__ isdigit (char) ;
 int sHOUR (int) ;
 int sMIN (int) ;
 int strtol (char*,int *,int) ;

__attribute__((used)) static timelib_long timelib_parse_tz_cor(char **ptr)
{
 char *begin = *ptr, *end;
 timelib_long tmp;

 while (isdigit(**ptr) || **ptr == ':') {
  ++*ptr;
 }
 end = *ptr;
 switch (end - begin) {
  case 1:
  case 2:
   return sHOUR(strtol(begin, ((void*)0), 10));
   break;
  case 3:
  case 4:
   if (begin[1] == ':') {
    tmp = sHOUR(strtol(begin, ((void*)0), 10)) + sMIN(strtol(begin + 2, ((void*)0), 10));
    return tmp;
   } else if (begin[2] == ':') {
    tmp = sHOUR(strtol(begin, ((void*)0), 10)) + sMIN(strtol(begin + 3, ((void*)0), 10));
    return tmp;
   } else {
    tmp = strtol(begin, ((void*)0), 10);
    return sHOUR(tmp / 100) + sMIN(tmp % 100);
   }
  case 5:
   tmp = sHOUR(strtol(begin, ((void*)0), 10)) + sMIN(strtol(begin + 3, ((void*)0), 10));
   return tmp;
 }
 return 0;
}
