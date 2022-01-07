
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* Part; } ;
struct TYPE_4__ {int EditHwnd; } ;
typedef TYPE_2__ IPADDRESS_INFO ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ GetWindowTextLengthW (int ) ;
 int TRACE (char*) ;
 int TRUE ;

__attribute__((used)) static BOOL IPADDRESS_IsBlank (const IPADDRESS_INFO *infoPtr)
{
    int i;

    TRACE("\n");

    for (i = 0; i < 4; i++)
        if (GetWindowTextLengthW (infoPtr->Part[i].EditHwnd)) return FALSE;

    return TRUE;
}
