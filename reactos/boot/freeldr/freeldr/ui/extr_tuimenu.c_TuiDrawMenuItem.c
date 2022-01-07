
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef size_t ULONG ;
typedef int UCHAR ;
struct TYPE_3__ {int Right; int Left; char** MenuItemList; size_t SelectedMenuItem; scalar_t__ Top; } ;
typedef TYPE_1__* PUI_MENU_INFO ;
typedef char CHAR ;


 int ATTR (int ,int ) ;
 scalar_t__ UiCenterMenu ;
 int UiDrawText (int,scalar_t__,char*,int ) ;
 int UiMenuBgColor ;
 int UiMenuFgColor ;
 int UiSelectedTextBgColor ;
 int UiSelectedTextColor ;
 int UiTextColor ;
 int memset (char*,int,int) ;
 int strcat (char*,char*) ;
 scalar_t__ strlen (char*) ;

VOID
TuiDrawMenuItem(PUI_MENU_INFO MenuInfo,
                ULONG MenuItemNumber)
{
    ULONG i;
    CHAR MenuLineText[80];
    ULONG SpaceTotal;
    ULONG SpaceLeft;
    ULONG SpaceRight = 0;
    UCHAR Attribute = ATTR(UiTextColor, UiMenuBgColor);




    if (UiCenterMenu)
    {




        SpaceTotal = (MenuInfo->Right - MenuInfo->Left - 2) -
                     (ULONG)(MenuInfo->MenuItemList[MenuItemNumber] ?
                             strlen(MenuInfo->MenuItemList[MenuItemNumber]) : 0);
        SpaceLeft = (SpaceTotal / 2) + 1;
        SpaceRight = (SpaceTotal - SpaceLeft) + 1;




        for (i = 0; i < SpaceLeft; i++) MenuLineText[i] = ' ';
        MenuLineText[i] = '\0';
    }
    else
    {



        MenuLineText[0] = '\0';
        strcat(MenuLineText, "    ");
    }




    if (MenuInfo->MenuItemList[MenuItemNumber])
        strcat(MenuLineText, MenuInfo->MenuItemList[MenuItemNumber]);




    if (UiCenterMenu) for (i=0; i < SpaceRight; i++) strcat(MenuLineText, " ");




    if (MenuInfo->MenuItemList[MenuItemNumber] == ((void*)0))
    {



        memset(MenuLineText, 0, 80);
        memset(MenuLineText, 0xC4, (MenuInfo->Right - MenuInfo->Left - 1));
        Attribute = ATTR(UiMenuFgColor, UiMenuBgColor);
    }
    else if (MenuItemNumber == MenuInfo->SelectedMenuItem)
    {



        Attribute = ATTR(UiSelectedTextColor, UiSelectedTextBgColor);
    }




    UiDrawText(MenuInfo->Left + 1,
               MenuInfo->Top + 1 + MenuItemNumber,
               MenuLineText,
               Attribute);
}
