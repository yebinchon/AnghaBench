
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int todaysDate; } ;
typedef int SYSTEMTIME ;
typedef TYPE_1__ MONTHCAL_INFO ;
typedef int LRESULT ;


 int FALSE ;
 int TRACE (char*,int *) ;
 int TRUE ;

__attribute__((used)) static LRESULT
MONTHCAL_GetToday(const MONTHCAL_INFO *infoPtr, SYSTEMTIME *today)
{
  TRACE("%p\n", today);

  if(!today) return FALSE;
  *today = infoPtr->todaysDate;
  return TRUE;
}
