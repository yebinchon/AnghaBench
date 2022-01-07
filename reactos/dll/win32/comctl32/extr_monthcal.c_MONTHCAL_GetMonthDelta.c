
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ delta; } ;
typedef TYPE_1__ MONTHCAL_INFO ;
typedef scalar_t__ LRESULT ;


 int GMR_VISIBLE ;
 scalar_t__ MONTHCAL_GetMonthRange (TYPE_1__ const*,int ,int *) ;
 int TRACE (char*) ;

__attribute__((used)) static LRESULT
MONTHCAL_GetMonthDelta(const MONTHCAL_INFO *infoPtr)
{
  TRACE("\n");

  if(infoPtr->delta)
    return infoPtr->delta;

  return MONTHCAL_GetMonthRange(infoPtr, GMR_VISIBLE, ((void*)0));
}
