
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* colors; } ;
struct TYPE_5__ {TYPE_1__ prefix; } ;
typedef TYPE_2__ TrgmStateKey ;
typedef scalar_t__ TrgmColor ;


 int Assert (int) ;
 scalar_t__ COLOR_BLANK ;
 scalar_t__ COLOR_UNKNOWN ;

__attribute__((used)) static bool
validArcLabel(TrgmStateKey *key, TrgmColor co)
{




 if (key->prefix.colors[0] == COLOR_UNKNOWN)
  return 0;


 Assert(key->prefix.colors[1] != COLOR_UNKNOWN);

 Assert(co != COLOR_UNKNOWN);





 if (key->prefix.colors[0] == COLOR_BLANK &&
  key->prefix.colors[1] == COLOR_BLANK &&
  co == COLOR_BLANK)
  return 0;
 if (key->prefix.colors[0] != COLOR_BLANK &&
  key->prefix.colors[1] == COLOR_BLANK)
  return 0;
 return 1;
}
