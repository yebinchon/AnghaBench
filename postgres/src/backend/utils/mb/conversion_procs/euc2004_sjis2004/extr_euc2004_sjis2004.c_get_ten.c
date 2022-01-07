
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
get_ten(int b, int *ku)
{
 int ten;

 if (b >= 0x40 && b <= 0x7e)
 {
  ten = b - 0x3f;
  *ku = 1;
 }
 else if (b >= 0x80 && b <= 0x9e)
 {
  ten = b - 0x40;
  *ku = 1;
 }
 else if (b >= 0x9f && b <= 0xfc)
 {
  ten = b - 0x9e;
  *ku = 0;
 }
 else
 {
  ten = -1;
  *ku = 0;
 }
 return ten;
}
