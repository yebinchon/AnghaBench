
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 scalar_t__ xisdigit (char const) ;

__attribute__((used)) static uint xatoi(const char *str)
{
 int val = 0;

 if (!str)
  return 0;

 while (xisdigit(*str)) {
  val = val * 10 + (*str - '0');
  ++str;
 }

 return val;
}
