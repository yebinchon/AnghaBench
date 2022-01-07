
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int firstDay; int hwndSelf; void* firstDaySet; } ;
typedef TYPE_1__ MONTHCAL_INFO ;
typedef int LRESULT ;
typedef int INT ;


 int ARRAY_SIZE (int *) ;
 void* FALSE ;
 int FIXME (char*,int) ;
 int GetLocaleInfoW (int ,int ,int *,int ) ;
 int InvalidateRect (int ,int *,void*) ;
 int LOCALE_IFIRSTDAYOFWEEK ;
 int LOCALE_USER_DEFAULT ;
 int MONTHCAL_GetFirstDayOfWeek (TYPE_1__*) ;
 int TRACE (char*,int,...) ;
 void* TRUE ;
 int atoiW (int *) ;
 int debugstr_w (int *) ;
 int strlenW (int *) ;

__attribute__((used)) static LRESULT
MONTHCAL_SetFirstDayOfWeek(MONTHCAL_INFO *infoPtr, INT day)
{
  LRESULT prev = MONTHCAL_GetFirstDayOfWeek(infoPtr);
  int new_day;

  TRACE("%d\n", day);

  if(day == -1)
  {
    WCHAR buf[80];

    GetLocaleInfoW(LOCALE_USER_DEFAULT, LOCALE_IFIRSTDAYOFWEEK, buf, ARRAY_SIZE(buf));
    TRACE("%s %d\n", debugstr_w(buf), strlenW(buf));

    new_day = atoiW(buf);

    infoPtr->firstDaySet = FALSE;
  }
  else if(day >= 7)
  {
    new_day = 6;
    infoPtr->firstDaySet = TRUE;
  }
  else
  {




    if (day < -1)
      FIXME("No bug compatibility for day=%d\n", day);

    new_day = day;
    infoPtr->firstDaySet = TRUE;
  }


  infoPtr->firstDay = (new_day >= 0) ? (++new_day) % 7 : new_day;

  InvalidateRect(infoPtr->hwndSelf, ((void*)0), FALSE);

  return prev;
}
