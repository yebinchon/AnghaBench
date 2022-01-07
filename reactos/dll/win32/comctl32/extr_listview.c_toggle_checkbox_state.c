
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stateMask; int state; } ;
typedef TYPE_1__ LVITEMW ;
typedef int LISTVIEW_INFO ;
typedef int INT ;
typedef int DWORD ;


 int INDEXTOSTATEIMAGEMASK (int) ;
 int LISTVIEW_GetItemState (int *,int ,int ) ;
 int LISTVIEW_SetItemState (int *,int ,TYPE_1__*) ;
 int LVIS_STATEIMAGEMASK ;
 int STATEIMAGEINDEX (int ) ;

__attribute__((used)) static void toggle_checkbox_state(LISTVIEW_INFO *infoPtr, INT nItem)
{
    DWORD state = STATEIMAGEINDEX(LISTVIEW_GetItemState(infoPtr, nItem, LVIS_STATEIMAGEMASK));
    if(state == 1 || state == 2)
    {
        LVITEMW lvitem;
        state ^= 3;
        lvitem.state = INDEXTOSTATEIMAGEMASK(state);
        lvitem.stateMask = LVIS_STATEIMAGEMASK;
        LISTVIEW_SetItemState(infoPtr, nItem, &lvitem);
    }
}
