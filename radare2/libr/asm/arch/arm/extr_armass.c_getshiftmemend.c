
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;


 int free (char*) ;
 int r_str_endswith (char const*,char*) ;
 char* r_str_ndup (char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 int thumb_getshift (char*) ;

__attribute__((used)) static st32 getshiftmemend(const char *input) {
 st32 res;
 if (!input || !*input || !r_str_endswith (input, "]")) {
  return -1;
 }

 char *temp = r_str_ndup (input, strlen (input) - 1);
 if (!temp) {
  return -1;
 }
 res = thumb_getshift (temp);
 free (temp);
 return res;
}
