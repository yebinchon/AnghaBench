
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool
is_scram_printable(char *p)
{
 for (; *p; p++)
 {
  if (*p < 0x21 || *p > 0x7E || *p == 0x2C )
   return 0;
 }
 return 1;
}
