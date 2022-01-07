
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_9__ {scalar_t__ lpDisplayName; } ;
struct TYPE_8__ {int iItem; } ;
struct TYPE_7__ {int hTool; TYPE_5__* pCurrentService; int hStatus; int SelectedItem; int hShortcutMenu; int hMainWnd; } ;
typedef TYPE_1__* PMAIN_WND_INFO ;
typedef TYPE_2__* LPNMLISTVIEW ;
typedef int LPARAM ;
typedef int HMENU ;


 int EnableMenuItem (int ,int,scalar_t__) ;
 int GetMenu (int ) ;
 scalar_t__ GetMenuState (int ,int,int ) ;
 TYPE_5__* GetSelectedService (TYPE_1__*) ;
 int GetSubMenu (int ,int ) ;
 int ID_DELETE ;
 int ID_PROP ;
 scalar_t__ MAKELONG (int ,int ) ;
 int MF_BYCOMMAND ;
 scalar_t__ MF_ENABLED ;
 int SB_SETTEXT ;
 int SendMessage (int ,int ,int,int ) ;
 int SetMenuDefaultItem (int ,int,int ) ;
 int TBSTATE_ENABLED ;
 int TB_SETSTATE ;

VOID
ListViewSelectionChanged(PMAIN_WND_INFO Info,
                         LPNMLISTVIEW pnmv)
{
    HMENU hMainMenu;


    hMainMenu = GetMenu(Info->hMainWnd);


    if (GetMenuState(hMainMenu,
                     ID_PROP,
                     MF_BYCOMMAND) != MF_ENABLED)
    {
        EnableMenuItem(hMainMenu,
                       ID_PROP,
                       MF_ENABLED);
        EnableMenuItem(GetSubMenu(Info->hShortcutMenu, 0),
                       ID_PROP,
                       MF_ENABLED);
        SetMenuDefaultItem(GetSubMenu(Info->hShortcutMenu, 0),
                           ID_PROP,
                           MF_BYCOMMAND);
    }


    if (GetMenuState(hMainMenu,
                     ID_DELETE,
                     MF_BYCOMMAND) != MF_ENABLED)
    {
        EnableMenuItem(hMainMenu,
                       ID_DELETE,
                       MF_ENABLED);
        EnableMenuItem(GetSubMenu(Info->hShortcutMenu, 0),
                       ID_DELETE,
                       MF_ENABLED);
    }


    Info->SelectedItem = pnmv->iItem;


    Info->pCurrentService = GetSelectedService(Info);


    SendMessage(Info->hStatus,
                SB_SETTEXT,
                1,
                (LPARAM)Info->pCurrentService->lpDisplayName);


    SendMessage(Info->hTool,
                TB_SETSTATE,
                ID_PROP,
                (LPARAM)MAKELONG(TBSTATE_ENABLED, 0));
}
