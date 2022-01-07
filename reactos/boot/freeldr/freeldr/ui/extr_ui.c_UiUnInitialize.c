
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_2__ {int (* UnInitialize ) () ;} ;
typedef int PCSTR ;


 int UiDrawBackdrop () ;
 int UiDrawStatusText (int ) ;
 int UiInfoBox (int ) ;
 TYPE_1__ UiVtbl ;
 int stub1 () ;

VOID UiUnInitialize(PCSTR BootText)
{
    UiDrawBackdrop();
    UiDrawStatusText(BootText);
    UiInfoBox(BootText);

    UiVtbl.UnInitialize();
}
