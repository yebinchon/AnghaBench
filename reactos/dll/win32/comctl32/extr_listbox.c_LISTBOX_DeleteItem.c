
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef int UINT ;
struct TYPE_9__ {size_t itemID; scalar_t__ itemData; int hwndItem; int CtlID; int CtlType; } ;
struct TYPE_8__ {int owner; int self; int nb_items; TYPE_1__* items; } ;
struct TYPE_7__ {int str; scalar_t__ data; } ;
typedef int LPWSTR ;
typedef int LPARAM ;
typedef TYPE_2__ LB_DESCR ;
typedef size_t INT ;
typedef TYPE_3__ DELETEITEMSTRUCT ;


 int GWLP_ID ;
 int GetProcessHeap () ;
 int GetWindowLongPtrW (int ,int ) ;
 scalar_t__ HAS_STRINGS (TYPE_2__*) ;
 int HeapFree (int ,int ,int ) ;
 scalar_t__ IS_OWNERDRAW (TYPE_2__*) ;
 int LB_RESETCONTENT ;
 int ODT_LISTBOX ;
 int SendMessageW (int ,int ,int ,int ) ;
 int WM_DELETEITEM ;

__attribute__((used)) static void LISTBOX_DeleteItem( LB_DESCR *descr, INT index )
{

    ULONG_PTR item_data = descr->items[index].data;
    LPWSTR item_str = descr->items[index].str;

    if (!descr->nb_items)
        SendMessageW( descr->self, LB_RESETCONTENT, 0, 0 );






    if (IS_OWNERDRAW(descr) || item_data)
    {
        DELETEITEMSTRUCT dis;
        UINT id = (UINT)GetWindowLongPtrW( descr->self, GWLP_ID );

        dis.CtlType = ODT_LISTBOX;
        dis.CtlID = id;
        dis.itemID = index;
        dis.hwndItem = descr->self;
        dis.itemData = item_data;
        SendMessageW( descr->owner, WM_DELETEITEM, id, (LPARAM)&dis );
    }
    if (HAS_STRINGS(descr))
        HeapFree( GetProcessHeap(), 0, item_str );
}
