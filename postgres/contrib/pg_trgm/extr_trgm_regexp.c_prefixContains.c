
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* colors; } ;
typedef TYPE_1__ TrgmPrefix ;


 scalar_t__ COLOR_UNKNOWN ;

__attribute__((used)) static bool
prefixContains(TrgmPrefix *prefix1, TrgmPrefix *prefix2)
{
 if (prefix1->colors[1] == COLOR_UNKNOWN)
 {

  return 1;
 }
 else if (prefix1->colors[0] == COLOR_UNKNOWN)
 {




  if (prefix1->colors[1] == prefix2->colors[1])
   return 1;
  else
   return 0;
 }
 else
 {

  if (prefix1->colors[0] == prefix2->colors[0] &&
   prefix1->colors[1] == prefix2->colors[1])
   return 1;
  else
   return 0;
 }
}
