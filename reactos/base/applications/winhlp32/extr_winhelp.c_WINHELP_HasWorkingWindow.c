
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* active_win; TYPE_2__* win_list; } ;
struct TYPE_5__ {TYPE_1__* page; scalar_t__ next; } ;
struct TYPE_4__ {int * file; } ;
typedef int BOOL ;


 int FALSE ;
 TYPE_3__ Globals ;
 int TRUE ;

__attribute__((used)) static BOOL WINHELP_HasWorkingWindow(void)
{
    if (!Globals.active_win) return FALSE;
    if (Globals.active_win->next || Globals.win_list != Globals.active_win) return TRUE;
    return Globals.active_win->page != ((void*)0) && Globals.active_win->page->file != ((void*)0);
}
