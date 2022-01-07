
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int Self; TYPE_1__* Part; int Enabled; } ;
struct TYPE_4__ {int EditHwnd; } ;
typedef int LRESULT ;
typedef TYPE_2__ IPADDRESS_INFO ;
typedef int BOOL ;


 int EnableWindow (int ,int ) ;
 int FALSE ;
 int InvalidateRgn (int ,int *,int ) ;

__attribute__((used)) static LRESULT IPADDRESS_Enable (IPADDRESS_INFO *infoPtr, BOOL enabled)
{
    int i;

    infoPtr->Enabled = enabled;

    for (i = 0; i < 4; i++)
        EnableWindow(infoPtr->Part[i].EditHwnd, enabled);

    InvalidateRgn(infoPtr->Self, ((void*)0), FALSE);
    return 0;
}
