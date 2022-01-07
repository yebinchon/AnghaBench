
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int firstDay; int firstDaySet; } ;
typedef TYPE_1__ MONTHCAL_INFO ;
typedef int LRESULT ;


 int MAKELONG (int,int ) ;

__attribute__((used)) static inline LRESULT
MONTHCAL_GetFirstDayOfWeek(const MONTHCAL_INFO *infoPtr)
{
  int day;


  day = (infoPtr->firstDay >= 0) ? (infoPtr->firstDay+6)%7 : infoPtr->firstDay;

  return MAKELONG(day, infoPtr->firstDaySet);
}
