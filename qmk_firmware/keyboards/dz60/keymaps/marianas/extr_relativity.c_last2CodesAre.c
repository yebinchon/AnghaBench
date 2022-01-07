
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 scalar_t__* macroTaps ;
 int macroTapsLen ;

bool last2CodesAre(uint16_t kc, uint16_t kc2)
{
  for (int i = 0; i < macroTapsLen-2 && macroTaps[i] > 0; i++)
  {
    if (macroTaps[i] == kc && macroTaps[i+1] == kc2 && macroTaps[i+2] == 0) return 1;
  }
  return 0;
}
