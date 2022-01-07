
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int E_ERROR ;
 int soap_error0 (int ,char*) ;

__attribute__((used)) static int calc_dimension_12(const char* str)
{
 int i = 0, flag = 0;
 while (*str != '\0' && (*str < '0' || *str > '9') && (*str != '*')) {
  str++;
 }
 if (*str == '*') {
  i++;
  str++;
 }
 while (*str != '\0') {
  if (*str >= '0' && *str <= '9') {
   if (flag == 0) {
      i++;
      flag = 1;
     }
   } else if (*str == '*') {
   soap_error0(E_ERROR, "Encoding: '*' may only be first arraySize value in list");
  } else {
   flag = 0;
  }
  str++;
 }
 return i;
}
