
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int calc_dimension(const char* str)
{
 int i = 1;
 while (*str != ']' && *str != '\0') {
  if (*str == ',') {
      i++;
  }
  str++;
 }
 return i;
}
