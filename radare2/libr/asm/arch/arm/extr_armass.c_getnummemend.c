
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;


 int err ;
 int free (char*) ;
 int getnum (char*) ;
 int r_str_endswith (char const*,char*) ;
 char* r_str_ndup (char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static st32 getnummemend (const char *input) {
 st32 res;
 err = 0;
 if (!input || !*input || !r_str_endswith (input, "]")) {
  err = 1;
  return -1;
 }
 char *temp = r_str_ndup (input, strlen (input) - 1);
 if (!temp) {
  err = 1;
  return -1;
 }
 res = getnum (temp);
 free (temp);
 return res;
}
