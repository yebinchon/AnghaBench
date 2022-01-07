
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* first_button; } ;
typedef TYPE_1__ WINHELP_WINDOW ;
struct TYPE_6__ {struct TYPE_6__* next; int hWnd; } ;
typedef TYPE_2__ WINHELP_BUTTON ;


 int DestroyWindow (int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_2__*) ;

__attribute__((used)) static void WINHELP_DeleteButtons(WINHELP_WINDOW* win)
{
    WINHELP_BUTTON* b;
    WINHELP_BUTTON* bp;

    for (b = win->first_button; b; b = bp)
    {
        DestroyWindow(b->hWnd);
        bp = b->next;
        HeapFree(GetProcessHeap(), 0, b);
    }
    win->first_button = ((void*)0);
}
