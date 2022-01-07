
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hMonthCal; } ;
typedef int SYSTEMTIME ;
typedef int LPARAM ;
typedef int DWORD ;
typedef TYPE_1__ DATETIME_INFO ;
typedef int BOOL ;


 int FALSE ;
 int GDTR_MAX ;
 int GDTR_MIN ;
 int MCM_GETRANGE ;
 int MONTHCAL_CompareSystemTime (int const*,int *) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRUE ;
 int max_allowed_date ;
 int min_allowed_date ;

__attribute__((used)) static BOOL DATETIME_IsDateInValidRange(const DATETIME_INFO *infoPtr, const SYSTEMTIME *date)
{
    SYSTEMTIME range[2];
    DWORD limits;

    if ((MONTHCAL_CompareSystemTime(date, &max_allowed_date) == 1) ||
        (MONTHCAL_CompareSystemTime(date, &min_allowed_date) == -1))
        return FALSE;

    limits = SendMessageW (infoPtr->hMonthCal, MCM_GETRANGE, 0, (LPARAM)range);

    if (limits & GDTR_MAX)
    {
        if (MONTHCAL_CompareSystemTime(date, &range[1]) == 1)
           return FALSE;
    }

    if (limits & GDTR_MIN)
    {
        if (MONTHCAL_CompareSystemTime(date, &range[0]) == -1)
           return FALSE;
    }

    return TRUE;
}
