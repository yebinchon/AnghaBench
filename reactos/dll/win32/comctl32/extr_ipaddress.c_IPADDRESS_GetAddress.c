
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {TYPE_1__* Part; } ;
struct TYPE_4__ {int EditHwnd; } ;
typedef int* LPDWORD ;
typedef TYPE_2__ IPADDRESS_INFO ;
typedef int DWORD ;


 scalar_t__ GetWindowTextW (int ,int *,int) ;
 int TRACE (char*) ;
 scalar_t__ atolW (int *) ;

__attribute__((used)) static int IPADDRESS_GetAddress (const IPADDRESS_INFO *infoPtr, LPDWORD ip_address)
{
    WCHAR field[5];
    int i, invalid = 0;
    DWORD ip_addr = 0;

    TRACE("\n");

    for (i = 0; i < 4; i++) {
        ip_addr *= 256;
        if (GetWindowTextW (infoPtr->Part[i].EditHwnd, field, 4))
       ip_addr += atolW(field);
 else
     invalid++;
    }
    *ip_address = ip_addr;

    return 4 - invalid;
}
