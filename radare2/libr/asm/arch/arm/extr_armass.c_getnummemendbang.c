
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;


 int err ;
 int free (char*) ;
 int getnum (char*) ;
 int r_str_endswith (char const*,char*) ;
 char* r_str_ndup (char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static st32 getnummemendbang (const char *input) {
 st32 res;
 err = 0;
 if (!input || (strlen (input) < 2) || (input[strlen(input) - 2] != ']' || !r_str_endswith (input, "!"))) {
  err = 1;
  return 0;
 }
 char *temp = r_str_ndup (input, strlen (input) - 2);
 if (!temp) {
  err = 1;
  return 0;
 }
 res = getnum (temp);
 free (temp);
 return res;
}
