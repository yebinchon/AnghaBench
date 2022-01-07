
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;


 int err ;
 int free (char*) ;
 int getnum (char*) ;
 int r_str_endswith (char const*,char*) ;
 char* r_str_ndup (char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static ut64 getnumbang(const char *str) {
 ut64 res;

 if (!str || !*str || !r_str_endswith (str, "!")) {
  err = 1;
  return 0;
 }
 char *temp = r_str_ndup (str, strlen (str) - 1);
 if (!temp) {
  return -1;
 }
 err = 0;
 res = getnum (temp);
 free (temp);
 return res;
}
