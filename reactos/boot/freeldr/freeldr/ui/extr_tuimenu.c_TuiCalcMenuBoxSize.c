
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef size_t ULONG ;
struct TYPE_3__ {size_t MenuItemCount; size_t Left; size_t Top; size_t Right; size_t Bottom; scalar_t__* MenuItemList; } ;
typedef TYPE_1__* PUI_MENU_INFO ;


 size_t TUI_TITLE_BOX_CHAR_HEIGHT ;
 scalar_t__ UiCenterMenu ;
 size_t UiScreenHeight ;
 size_t UiScreenWidth ;
 scalar_t__ strlen (scalar_t__) ;

VOID
TuiCalcMenuBoxSize(PUI_MENU_INFO MenuInfo)
{
    ULONG i;
    ULONG Width = 0;
    ULONG Height;
    ULONG Length;




    Height = MenuInfo->MenuItemCount + 2;
    Height -= 1;




    for(i = 0; i < MenuInfo->MenuItemCount; i++)
    {



        if (MenuInfo->MenuItemList[i])
        {
            Length = (ULONG)strlen(MenuInfo->MenuItemList[i]);
            if (Length > Width) Width = Length;
        }
    }




    Width += 18;




    if (UiCenterMenu)
    {



        MenuInfo->Left = (UiScreenWidth - Width) / 2;
        MenuInfo->Top = (((UiScreenHeight - TUI_TITLE_BOX_CHAR_HEIGHT) -
                          Height) / 2) + TUI_TITLE_BOX_CHAR_HEIGHT;
    }
    else
    {



        MenuInfo->Left = -1;
        MenuInfo->Top = 4;
    }




    MenuInfo->Right = (MenuInfo->Left) + Width;
    MenuInfo->Bottom = (MenuInfo->Top) + Height;
}
