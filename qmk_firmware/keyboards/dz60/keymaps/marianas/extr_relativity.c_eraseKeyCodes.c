
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* macroTaps ;
 int macroTapsLen ;

void eraseKeyCodes(void)
{
  int i = 0;
  while (i < macroTapsLen && macroTaps[i] > 0) macroTaps[i++] = 0;
}
