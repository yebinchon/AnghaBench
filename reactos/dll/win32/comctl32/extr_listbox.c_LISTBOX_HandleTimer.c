
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ top_item; scalar_t__ page_size; scalar_t__ focus_item; scalar_t__ nb_items; } ;
typedef int TIMER_DIRECTION ;
typedef int LRESULT ;
typedef TYPE_1__ LB_DESCR ;
typedef scalar_t__ INT ;


 int FALSE ;





 scalar_t__ LISTBOX_GetCurrentPageSize (TYPE_1__*) ;
 int LISTBOX_MoveCaret (TYPE_1__*,scalar_t__,int ) ;
 int TRUE ;

__attribute__((used)) static LRESULT LISTBOX_HandleTimer( LB_DESCR *descr, INT index, TIMER_DIRECTION dir )
{
    switch(dir)
    {
    case 128:
        if (descr->top_item) index = descr->top_item - 1;
        else index = 0;
        break;
    case 131:
        if (descr->top_item) index -= descr->page_size;
        break;
    case 132:
        index = descr->top_item + LISTBOX_GetCurrentPageSize( descr );
        if (index == descr->focus_item) index++;
        if (index >= descr->nb_items) index = descr->nb_items - 1;
        break;
    case 129:
        if (index + descr->page_size < descr->nb_items)
            index += descr->page_size;
        break;
    case 130:
        break;
    }
    if (index == descr->focus_item) return FALSE;
    LISTBOX_MoveCaret( descr, index, FALSE );
    return TRUE;
}
