
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_5__ {int Self; TYPE_1__* Part; } ;
struct TYPE_4__ {int EditHwnd; } ;
typedef TYPE_2__ IPADDRESS_INFO ;
typedef int INT ;


 scalar_t__ GetWindowTextW (int ,char*,int) ;
 int SetWindowTextW (int ,char*) ;
 int strcatW (char*,char const*) ;

__attribute__((used)) static void IPADDRESS_UpdateText (const IPADDRESS_INFO *infoPtr)
{
    static const WCHAR zero[] = {'0', 0};
    static const WCHAR dot[] = {'.', 0};
    WCHAR field[4];
    WCHAR ip[16];
    INT i;

    ip[0] = 0;

    for (i = 0; i < 4; i++) {
        if (GetWindowTextW (infoPtr->Part[i].EditHwnd, field, 4))
            strcatW(ip, field);
        else

            strcatW(ip, zero);
        if (i != 3)
            strcatW(ip, dot);
    }

    SetWindowTextW(infoPtr->Self, ip);
}
