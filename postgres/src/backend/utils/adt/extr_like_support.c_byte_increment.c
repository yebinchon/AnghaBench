
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool
byte_increment(unsigned char *ptr, int len)
{
 if (*ptr >= 255)
  return 0;
 (*ptr)++;
 return 1;
}
