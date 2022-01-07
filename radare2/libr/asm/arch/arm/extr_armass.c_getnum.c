
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;


 int err ;
 int strtoll (char const*,char**,int ) ;

__attribute__((used)) static ut64 getnum(const char *str) {
 char *endptr;
 err = 0;
 ut64 val;

 if (!str) {
  err = 1;
  return 0;
 }
 while (*str == '$' || *str == '#') {
  str++;
 }
 val = strtoll (str, &endptr, 0);
 if (str != endptr && *endptr == '\0') {
  return val;
 }
 err = 1;
 return 0;
}
