
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_2__ {int hEdit; int hMenu; } ;


 int CMD_SEARCH ;
 int CMD_SEARCH_NEXT ;
 int EnableMenuItem (int ,int ,int) ;
 scalar_t__ GetWindowTextLength (int ) ;
 TYPE_1__ Globals ;
 int MF_BYCOMMAND ;
 int MF_DISABLED ;
 int MF_ENABLED ;
 int MF_GRAYED ;

VOID NOTEPAD_EnableSearchMenu()
{
    EnableMenuItem(Globals.hMenu, CMD_SEARCH,
                   MF_BYCOMMAND | ((GetWindowTextLength(Globals.hEdit) == 0) ? MF_DISABLED | MF_GRAYED : MF_ENABLED));
    EnableMenuItem(Globals.hMenu, CMD_SEARCH_NEXT,
                   MF_BYCOMMAND | ((GetWindowTextLength(Globals.hEdit) == 0) ? MF_DISABLED | MF_GRAYED : MF_ENABLED));
}
