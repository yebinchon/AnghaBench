
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_sll ;


 int strchr (char*,char) ;

__attribute__((used)) static timelib_sll timelib_meridian(char **ptr, timelib_sll h)
{
 timelib_sll retval = 0;

 while (!strchr("AaPp", **ptr)) {
  ++*ptr;
 }
 if (**ptr == 'a' || **ptr == 'A') {
  if (h == 12) {
   retval = -12;
  }
 } else if (h != 12) {
  retval = 12;
 }
 ++*ptr;
 if (**ptr == '.') {
  ++*ptr;
 }
 if (**ptr == 'M' || **ptr == 'm') {
  ++*ptr;
 }
 if (**ptr == '.') {
  ++*ptr;
 }
 return retval;
}
