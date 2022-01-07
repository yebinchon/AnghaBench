
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int Self; TYPE_1__* Part; } ;
struct TYPE_5__ {scalar_t__ OrigProc; int EditHwnd; } ;
typedef int LRESULT ;
typedef TYPE_1__ IPPART_INFO ;
typedef TYPE_2__ IPADDRESS_INFO ;
typedef int DWORD_PTR ;


 int GWLP_WNDPROC ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int TRACE (char*) ;
 int heap_free (TYPE_2__*) ;

__attribute__((used)) static LRESULT IPADDRESS_Destroy (IPADDRESS_INFO *infoPtr)
{
    int i;

    TRACE("\n");

    for (i = 0; i < 4; i++) {
 IPPART_INFO* part = &infoPtr->Part[i];
        SetWindowLongPtrW (part->EditHwnd, GWLP_WNDPROC, (DWORD_PTR)part->OrigProc);
    }

    SetWindowLongPtrW (infoPtr->Self, 0, 0);
    heap_free (infoPtr);
    return 0;
}
