
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* WORD ;
typedef int VOID ;
struct TYPE_3__ {void* wMinute; void* wHour; int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int PWSTR ;
typedef int INT ;


 int GetTimeFormat (int ,int ,TYPE_1__*,int *,int ,int ) ;
 int LOCALE_USER_DEFAULT ;
 int TIME_NOSECONDS ;

__attribute__((used)) static
VOID
JobTimeToTimeString(
    PWSTR pszBuffer,
    INT cchBuffer,
    WORD wHour,
    WORD wMinute)
{
    SYSTEMTIME Time = {0, 0, 0, 0, 0, 0, 0, 0};

    Time.wHour = wHour;
    Time.wMinute = wMinute;

    GetTimeFormat(LOCALE_USER_DEFAULT,
                  TIME_NOSECONDS,
                  &Time,
                  ((void*)0),
                  pszBuffer,
                  cchBuffer);
}
