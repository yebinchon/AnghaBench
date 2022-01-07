
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *gotoWord(const char *str, int n) {
 const char *ostr = str;
 int count = 0;
 while (*str) {
  if (count == n) {
   return ostr;
  }
  str++;
  if (*str == ',') {
   ostr = str + 1;
   count++;
  }
 }
 return ((void*)0);
}
