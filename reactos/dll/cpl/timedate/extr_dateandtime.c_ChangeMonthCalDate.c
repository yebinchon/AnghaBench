
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int VOID ;
typedef int HWND ;


 int MAKELPARAM (int ,int ) ;
 int MAKEWPARAM (int ,int ) ;
 int MCCM_SETDATE ;
 int SendMessageW (int ,int ,int ,int ) ;

__attribute__((used)) static VOID
ChangeMonthCalDate(HWND hMonthCal,
                   WORD Day,
                   WORD Month,
                   WORD Year)
{
    SendMessageW(hMonthCal,
                 MCCM_SETDATE,
                 MAKEWPARAM(Day,
                            Month),
                 MAKELPARAM(Year,
                            0));
}
