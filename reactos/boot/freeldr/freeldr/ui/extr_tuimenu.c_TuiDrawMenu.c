
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ ULONG ;
struct TYPE_7__ {int (* DrawStatusText ) (char*) ;} ;
struct TYPE_6__ {scalar_t__ MenuItemCount; scalar_t__ ShowBootOptions; } ;
typedef TYPE_1__* PUI_MENU_INFO ;


 int DisplayBootTimeOptions () ;
 int TuiDrawMenuBox (TYPE_1__*) ;
 int TuiDrawMenuItem (TYPE_1__*,scalar_t__) ;
 int UiDrawBackdrop () ;
 TYPE_2__ UiVtbl ;
 int VideoCopyOffScreenBufferToVRAM () ;
 int stub1 (char*) ;

VOID
TuiDrawMenu(PUI_MENU_INFO MenuInfo)
{
    ULONG i;




    UiDrawBackdrop();




    UiVtbl.DrawStatusText("Use \x18 and \x19 to select, then press ENTER.");




    TuiDrawMenuBox(MenuInfo);




    for (i = 0; i < MenuInfo->MenuItemCount; i++)
    {
        TuiDrawMenuItem(MenuInfo, i);
    }


    if (MenuInfo->ShowBootOptions)
    {
        DisplayBootTimeOptions();
    }

    VideoCopyOffScreenBufferToVRAM();
}
