
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ ULONG ;
struct TYPE_7__ {int (* DrawText ) (int ,scalar_t__,char*,int ) ;} ;
struct TYPE_6__ {char* MenuHeader; char* MenuFooter; scalar_t__ MenuItemCount; scalar_t__ ShowBootOptions; scalar_t__ Bottom; scalar_t__ Top; } ;
typedef TYPE_1__* PUI_MENU_INFO ;


 int ATTR (int ,int ) ;
 int DisplayBootTimeOptions () ;
 int TuiDrawMenuBox (TYPE_1__*) ;
 int TuiDrawMenuItem (TYPE_1__*,scalar_t__) ;
 int UiDrawBackdrop () ;
 int UiMenuBgColor ;
 int UiMenuFgColor ;
 scalar_t__ UiScreenHeight ;
 TYPE_2__ UiVtbl ;
 int VideoCopyOffScreenBufferToVRAM () ;
 int stub1 (int ,scalar_t__,char*,int ) ;
 int stub2 (int ,scalar_t__,char*,int ) ;
 int stub3 (int ,scalar_t__,char*,int ) ;
 int stub4 (int ,scalar_t__,char*,int ) ;

VOID
MiniTuiDrawMenu(PUI_MENU_INFO MenuInfo)
{
    ULONG i;




    UiDrawBackdrop();




    if (MenuInfo->MenuHeader)
    {
        UiVtbl.DrawText(0,
                        MenuInfo->Top - 2,
                        MenuInfo->MenuHeader,
                        ATTR(UiMenuFgColor, UiMenuBgColor));
    }




    UiVtbl.DrawText(0,
                    MenuInfo->Bottom + 1,
                    "Use \x18 and \x19 to move the highlight to your choice.",
                    ATTR(UiMenuFgColor, UiMenuBgColor));
    UiVtbl.DrawText(0,
                    MenuInfo->Bottom + 2,
                    "Press ENTER to choose.",
                    ATTR(UiMenuFgColor, UiMenuBgColor));




    if (MenuInfo->MenuFooter)
    {
        UiVtbl.DrawText(0,
                        UiScreenHeight - 4,
                        MenuInfo->MenuFooter,
                        ATTR(UiMenuFgColor, UiMenuBgColor));
    }




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
