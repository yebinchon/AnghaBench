
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {TYPE_1__* Part; } ;
struct TYPE_4__ {int EditHwnd; } ;
typedef TYPE_2__ IPADDRESS_INFO ;


 int SetWindowTextW (int ,int const*) ;
 int TRACE (char*) ;

__attribute__((used)) static void IPADDRESS_ClearAddress (const IPADDRESS_INFO *infoPtr)
{
    static const WCHAR nil[] = { 0 };
    int i;

    TRACE("\n");

    for (i = 0; i < 4; i++)
        SetWindowTextW (infoPtr->Part[i].EditHwnd, nil);
}
