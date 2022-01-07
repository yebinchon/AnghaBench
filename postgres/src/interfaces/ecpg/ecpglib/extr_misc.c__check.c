
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool
_check(const unsigned char *ptr, int length)
{
 for (length--; length >= 0; length--)
  if (ptr[length] != 0xff)
   return 0;

 return 1;
}
