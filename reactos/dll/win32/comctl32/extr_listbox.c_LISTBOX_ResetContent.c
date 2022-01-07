
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nb_items; int selected_item; int anchor_item; int * items; scalar_t__ focus_item; scalar_t__ top_item; } ;
typedef TYPE_1__ LB_DESCR ;
typedef scalar_t__ INT ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int LISTBOX_DeleteItem (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void LISTBOX_ResetContent( LB_DESCR *descr )
{
    INT i;

    for(i = descr->nb_items - 1; i>=0; i--) LISTBOX_DeleteItem( descr, i);
    HeapFree( GetProcessHeap(), 0, descr->items );
    descr->nb_items = 0;
    descr->top_item = 0;
    descr->selected_item = -1;
    descr->focus_item = 0;
    descr->anchor_item = -1;
    descr->items = ((void*)0);
}
