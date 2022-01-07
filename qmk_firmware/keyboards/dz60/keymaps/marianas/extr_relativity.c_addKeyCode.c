
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 scalar_t__* macroTaps ;
 int macroTapsLen ;

void addKeyCode(uint16_t kc)
{
  int i = 0;
  while (i < macroTapsLen-2 && macroTaps[i] > 0) i++;
  if (macroTaps[i] == 0)
  {
    macroTaps[i] = kc;
    macroTaps[i+1] = 0;
  }
}
