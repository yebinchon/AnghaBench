
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int focusedSel; int hwndSelf; } ;
typedef int SYSTEMTIME ;
typedef int RECT ;
typedef TYPE_1__ MONTHCAL_INFO ;
typedef int BOOL ;


 int FALSE ;
 int InvalidateRect (int ,int *,int ) ;
 scalar_t__ MONTHCAL_GetDayRect (TYPE_1__*,int *,int *,int) ;
 scalar_t__ MONTHCAL_IsDateEqual (int *,int const*) ;
 scalar_t__ MONTHCAL_ValidateDate (int *) ;
 int TRUE ;
 int st_null ;

__attribute__((used)) static BOOL MONTHCAL_SetDayFocus(MONTHCAL_INFO *infoPtr, const SYSTEMTIME *st)
{
  RECT r;

  if(st)
  {


    if(MONTHCAL_IsDateEqual(&infoPtr->focusedSel, st)) return FALSE;


    if (MONTHCAL_GetDayRect(infoPtr, &infoPtr->focusedSel, &r, -1))
      InvalidateRect(infoPtr->hwndSelf, &r, FALSE);

    infoPtr->focusedSel = *st;
  }


  if (MONTHCAL_GetDayRect(infoPtr, &infoPtr->focusedSel, &r, -1))
    InvalidateRect(infoPtr->hwndSelf, &r, FALSE);

  if(!st && MONTHCAL_ValidateDate(&infoPtr->focusedSel))
    infoPtr->focusedSel = st_null;

  return TRUE;
}
