
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
struct TYPE_3__ {int Left; int Right; scalar_t__ MenuTimeRemaining; int MenuItemCount; scalar_t__ Top; int ** MenuItemList; scalar_t__ Bottom; } ;
typedef TYPE_1__* PUI_MENU_INFO ;
typedef int MenuLineText ;
typedef char CHAR ;


 int ATTR (int ,int ) ;
 int D_HORZ ;
 int D_VERT ;
 int FALSE ;
 int TRUE ;
 scalar_t__ UiCenterMenu ;
 int UiDrawBox (int,scalar_t__,int,scalar_t__,int ,int ,int ,int ,int ) ;
 int UiDrawText (int,scalar_t__,char*,int ) ;
 int UiMenuBgColor ;
 scalar_t__ UiMenuBox ;
 int UiMenuFgColor ;
 char* UiTimeText ;
 int _itoa (scalar_t__,char*,int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

VOID
TuiDrawMenuBox(PUI_MENU_INFO MenuInfo)
{
    CHAR MenuLineText[80], TempString[80];
    ULONG i;




    if (UiMenuBox)
    {
        UiDrawBox(MenuInfo->Left,
                  MenuInfo->Top,
                  MenuInfo->Right,
                  MenuInfo->Bottom,
                  D_VERT,
                  D_HORZ,
                  FALSE,
                  TRUE,
                  ATTR(UiMenuFgColor, UiMenuBgColor));
    }




    if (MenuInfo->MenuTimeRemaining >= 0)
    {



        strcpy(TempString, UiTimeText);
        i = (ULONG)strlen(TempString);
        TempString[i - 2] = 0;




        strcpy(MenuLineText, TempString);
        _itoa(MenuInfo->MenuTimeRemaining, TempString, 10);
        strcat(MenuLineText, TempString);




        strcat(MenuLineText, &UiTimeText[i - 2]);




        if (UiCenterMenu)
        {



            UiDrawText(MenuInfo->Right - (ULONG)strlen(MenuLineText) - 1,
                       MenuInfo->Bottom,
                       MenuLineText,
                       ATTR(UiMenuFgColor, UiMenuBgColor));
        }
        else
        {



            UiDrawText(0,
                       MenuInfo->Bottom + 4,
                       MenuLineText,
                       ATTR(UiMenuFgColor, UiMenuBgColor));
        }
    }
    else
    {



        for (i=0; i<sizeof(MenuLineText)-1; i++)
        {
            MenuLineText[i] = ' ';
        }
        MenuLineText[sizeof(MenuLineText)-1] = 0;




        if (UiCenterMenu)
        {
            UiDrawText(MenuInfo->Right - (ULONG)strlen(MenuLineText) - 1,
                       MenuInfo->Bottom,
                       MenuLineText,
                       ATTR(UiMenuFgColor, UiMenuBgColor));
        }
        else
        {
            UiDrawText(0,
                       MenuInfo->Bottom + 4,
                       MenuLineText,
                       ATTR(UiMenuFgColor, UiMenuBgColor));
        }
    }




    for (i = 0; i < MenuInfo->MenuItemCount; i++)
    {



        if (MenuInfo->MenuItemList[i] == ((void*)0))
        {



            UiDrawText(MenuInfo->Left,
                       MenuInfo->Top + i + 1,
                       "\xC7",
                       ATTR(UiMenuFgColor, UiMenuBgColor));
            UiDrawText(MenuInfo->Right,
                       MenuInfo->Top + i + 1,
                       "\xB6",
                       ATTR(UiMenuFgColor, UiMenuBgColor));
        }
    }
}
