
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_ull ;


 int TIMELIB_UNSET ;
 int timelib_get_nr (char**,int) ;

__attribute__((used)) static timelib_ull timelib_get_unsigned_nr(char **ptr, int max_length)
{
 timelib_ull dir = 1;

 while (((**ptr < '0') || (**ptr > '9')) && (**ptr != '+') && (**ptr != '-')) {
  if (**ptr == '\0') {
   return TIMELIB_UNSET;
  }
  ++*ptr;
 }

 while (**ptr == '+' || **ptr == '-')
 {
  if (**ptr == '-') {
   dir *= -1;
  }
  ++*ptr;
 }
 return dir * timelib_get_nr(ptr, max_length);
}
