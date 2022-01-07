
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int delta; } ;
typedef TYPE_1__ MONTHCAL_INFO ;
typedef int LRESULT ;
typedef int INT ;


 int TRACE (char*,int ) ;

__attribute__((used)) static LRESULT
MONTHCAL_SetMonthDelta(MONTHCAL_INFO *infoPtr, INT delta)
{
  INT prev = infoPtr->delta;

  TRACE("delta %d\n", delta);

  infoPtr->delta = delta;
  return prev;
}
