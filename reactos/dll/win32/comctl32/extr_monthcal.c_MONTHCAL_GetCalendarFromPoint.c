
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* calendars; } ;
struct TYPE_12__ {int right; int bottom; int top; int left; } ;
struct TYPE_10__ {int right; int bottom; } ;
struct TYPE_9__ {int top; int left; } ;
struct TYPE_11__ {TYPE_2__ days; TYPE_1__ title; } ;
typedef TYPE_4__ RECT ;
typedef int POINT ;
typedef TYPE_5__ MONTHCAL_INFO ;
typedef size_t INT ;


 size_t MONTHCAL_GetCalCount (TYPE_5__ const*) ;
 scalar_t__ PtInRect (TYPE_4__*,int const) ;

__attribute__((used)) static INT MONTHCAL_GetCalendarFromPoint(const MONTHCAL_INFO *infoPtr, const POINT *pt)
{
  RECT r;
  INT i;

  for (i = 0; i < MONTHCAL_GetCalCount(infoPtr); i++)
  {

     r.left = infoPtr->calendars[i].title.left;
     r.top = infoPtr->calendars[i].title.top;
     r.bottom = infoPtr->calendars[i].days.bottom;
     r.right = infoPtr->calendars[i].days.right;

     if (PtInRect(&r, *pt)) return i;
  }

  return -1;
}
