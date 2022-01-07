
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int todaySet; } ;
typedef int SYSTEMTIME ;
typedef TYPE_1__ MONTHCAL_INFO ;
typedef int LRESULT ;


 scalar_t__ MONTHCAL_UpdateToday (TYPE_1__*,int const*) ;
 int TRACE (char*,int const*) ;
 int TRUE ;

__attribute__((used)) static LRESULT
MONTHCAL_SetToday(MONTHCAL_INFO *infoPtr, const SYSTEMTIME *today)
{
  TRACE("%p\n", today);

  if (today)
  {

    if (MONTHCAL_UpdateToday(infoPtr, today)) infoPtr->todaySet = TRUE;
  }

  return 0;
}
