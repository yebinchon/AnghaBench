
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wMonth; scalar_t__ wDay; int wYear; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ MONTHCAL_MonthLength (int,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL MONTHCAL_ValidateDate(const SYSTEMTIME *time)
{
    if (time->wMonth < 1 || time->wMonth > 12 )
        return FALSE;
    if (time->wDay == 0 || time->wDay > MONTHCAL_MonthLength(time->wMonth, time->wYear))
        return FALSE;

    return TRUE;
}
