
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wHour; int wMinute; int wSecond; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL MONTHCAL_ValidateTime(const SYSTEMTIME *time)
{
  if((time->wHour > 24) || (time->wMinute > 59) || (time->wSecond > 59))
    return FALSE;
  else
    return TRUE;
}
