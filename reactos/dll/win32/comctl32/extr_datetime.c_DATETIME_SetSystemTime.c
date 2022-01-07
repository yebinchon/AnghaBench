
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ wYear; int wMonth; int wDay; int wHour; int wMinute; int wSecond; int wMilliseconds; } ;
struct TYPE_9__ {int dwStyle; int hwndSelf; int hwndCheckbut; void* dateValid; TYPE_1__ date; int hMonthCal; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int LPARAM ;
typedef scalar_t__ DWORD ;
typedef TYPE_2__ DATETIME_INFO ;
typedef void* BOOL ;


 int BM_SETCHECK ;
 int BST_CHECKED ;
 int BST_UNCHECKED ;
 int DATETIME_IsDateInValidRange (TYPE_2__*,TYPE_1__ const*) ;
 int DTS_SHOWNONE ;
 void* FALSE ;
 scalar_t__ GDT_NONE ;
 scalar_t__ GDT_VALID ;
 int InvalidateRect (int ,int *,void*) ;
 int MCM_SETCURSEL ;
 int MONTHCAL_CalculateDayOfWeek (TYPE_1__*,void*) ;
 int MONTHCAL_MonthLength (int,scalar_t__) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,scalar_t__,int,int,int,int,int) ;
 void* TRUE ;

__attribute__((used)) static BOOL
DATETIME_SetSystemTime (DATETIME_INFO *infoPtr, DWORD flag, const SYSTEMTIME *systime)
{
    if (!systime) return FALSE;

    TRACE("%04d/%02d/%02d %02d:%02d:%02d\n",
          systime->wYear, systime->wMonth, systime->wDay,
          systime->wHour, systime->wMinute, systime->wSecond);

    if (flag == GDT_VALID) {
        if (systime->wYear == 0 ||
            systime->wMonth < 1 || systime->wMonth > 12 ||
            systime->wDay < 1 ||
            systime->wDay > MONTHCAL_MonthLength(systime->wMonth, systime->wYear) ||
            systime->wHour > 23 ||
            systime->wMinute > 59 ||
            systime->wSecond > 59 ||
            systime->wMilliseconds > 999
           )
            return FALSE;


        if (!DATETIME_IsDateInValidRange(infoPtr, systime))
            return TRUE;

        infoPtr->dateValid = TRUE;
        infoPtr->date = *systime;

        MONTHCAL_CalculateDayOfWeek(&infoPtr->date, TRUE);

        SendMessageW (infoPtr->hMonthCal, MCM_SETCURSEL, 0, (LPARAM)(&infoPtr->date));
        SendMessageW (infoPtr->hwndCheckbut, BM_SETCHECK, BST_CHECKED, 0);
    } else if ((infoPtr->dwStyle & DTS_SHOWNONE) && (flag == GDT_NONE)) {
        infoPtr->dateValid = FALSE;
        SendMessageW (infoPtr->hwndCheckbut, BM_SETCHECK, BST_UNCHECKED, 0);
    }
    else
        return FALSE;

    InvalidateRect(infoPtr->hwndSelf, ((void*)0), TRUE);
    return TRUE;
}
