
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef void* ULONG_PTR ;
typedef int UINT ;
struct TYPE_20__ {int focus_item; int nb_items; int style; int item_height; int selected_item; int self; int owner; TYPE_2__* items; } ;
struct TYPE_19__ {int height; int selected; void* data; scalar_t__ str; } ;
struct TYPE_18__ {int itemID; int itemHeight; void* itemData; int CtlID; int CtlType; } ;
typedef TYPE_1__ MEASUREITEMSTRUCT ;
typedef int LRESULT ;
typedef scalar_t__ LPWSTR ;
typedef int LPARAM ;
typedef TYPE_2__ LB_ITEMDATA ;
typedef TYPE_3__ LB_DESCR ;
typedef int INT ;


 int FALSE ;
 int GWLP_ID ;
 int GetProcessHeap () ;
 int GetWindowLongPtrW (int ,int ) ;
 scalar_t__ HAS_STRINGS (TYPE_3__*) ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 TYPE_2__* HeapReAlloc (int ,int ,TYPE_2__*,int) ;
 int HeapSize (int ,int ,TYPE_2__*) ;
 scalar_t__ ISWIN31 ;
 int IS_MULTISELECT (TYPE_3__*) ;
 int LBN_ERRSPACE ;
 int LBS_OWNERDRAWVARIABLE ;
 scalar_t__ LB_ARRAY_GRANULARITY ;
 int LB_ERR ;
 int LB_ERRSPACE ;
 int LB_OKAY ;
 int LISTBOX_InvalidateItems (TYPE_3__*,int) ;
 int LISTBOX_SetCaretIndex (TYPE_3__*,int ,int ) ;
 int LISTBOX_SetSelection (TYPE_3__*,int,int ,int ) ;
 int LISTBOX_UpdateScroll (TYPE_3__*) ;
 int ODT_LISTBOX ;
 int RtlMoveMemory (TYPE_2__*,TYPE_2__*,int) ;
 int SEND_NOTIFICATION (TYPE_3__*,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,int ,int,char*,int) ;
 int TRUE ;
 int WM_MEASUREITEM ;
 char* debugstr_w (scalar_t__) ;

__attribute__((used)) static LRESULT LISTBOX_InsertItem( LB_DESCR *descr, INT index,
                                   LPWSTR str, ULONG_PTR data )
{
    LB_ITEMDATA *item;
    INT max_items;
    INT oldfocus = descr->focus_item;

    if (index == -1) index = descr->nb_items;
    else if ((index < 0) || (index > descr->nb_items)) return LB_ERR;
    if (!descr->items) max_items = 0;
    else max_items = HeapSize( GetProcessHeap(), 0, descr->items ) / sizeof(*item);
    if (descr->nb_items == max_items)
    {

        max_items += LB_ARRAY_GRANULARITY;
 if (descr->items)
     item = HeapReAlloc( GetProcessHeap(), 0, descr->items,
                                  max_items * sizeof(LB_ITEMDATA) );
 else
     item = HeapAlloc( GetProcessHeap(), 0,
                                  max_items * sizeof(LB_ITEMDATA) );
        if (!item)
        {
            SEND_NOTIFICATION( descr, LBN_ERRSPACE );
            return LB_ERRSPACE;
        }
        descr->items = item;
    }



    item = &descr->items[index];
    if (index < descr->nb_items)
        RtlMoveMemory( item + 1, item,
                       (descr->nb_items - index) * sizeof(LB_ITEMDATA) );
    item->str = str;
    item->data = HAS_STRINGS(descr) ? 0 : data;
    item->height = 0;
    item->selected = FALSE;
    descr->nb_items++;



    if (descr->style & LBS_OWNERDRAWVARIABLE)
    {
        MEASUREITEMSTRUCT mis;
        UINT id = (UINT)GetWindowLongPtrW( descr->self, GWLP_ID );

        mis.CtlType = ODT_LISTBOX;
        mis.CtlID = id;
        mis.itemID = index;
        mis.itemData = data;
        mis.itemHeight = descr->item_height;
        SendMessageW( descr->owner, WM_MEASUREITEM, id, (LPARAM)&mis );
        item->height = mis.itemHeight ? mis.itemHeight : 1;
        TRACE("[%p]: measure item %d (%s) = %d\n",
              descr->self, index, str ? debugstr_w(str) : "", item->height );
    }



    LISTBOX_UpdateScroll( descr );
    LISTBOX_InvalidateItems( descr, index );



    if (descr->nb_items == 1)
         LISTBOX_SetCaretIndex( descr, 0, FALSE );

    else if ((ISWIN31) && !(IS_MULTISELECT(descr)))
    {
        descr->selected_item++;
        LISTBOX_SetSelection( descr, descr->selected_item-1, TRUE, FALSE );
    }
    else
    {
        if (index <= descr->selected_item)
        {
            descr->selected_item++;
            descr->focus_item = oldfocus;
        }
    }
    return LB_OKAY;
}
