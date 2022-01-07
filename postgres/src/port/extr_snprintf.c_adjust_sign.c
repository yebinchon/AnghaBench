
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
adjust_sign(int is_negative, int forcesign, int *signvalue)
{
 if (is_negative)
 {
  *signvalue = '-';
  return 1;
 }
 else if (forcesign)
  *signvalue = '+';
 return 0;
}
