
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * items; } ;
typedef int LRESULT ;
typedef int LB_ITEMDATA ;
typedef TYPE_1__ LB_DESCR ;
typedef int INT ;


 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int * HeapReAlloc (int ,int ,int *,int) ;
 int HeapSize (int ,int ,int *) ;
 int LBN_ERRSPACE ;
 int LB_ARRAY_GRANULARITY ;
 int LB_ERRSPACE ;
 int LB_OKAY ;
 int SEND_NOTIFICATION (TYPE_1__*,int ) ;

__attribute__((used)) static LRESULT LISTBOX_InitStorage( LB_DESCR *descr, INT nb_items )
{
    LB_ITEMDATA *item;

    nb_items += LB_ARRAY_GRANULARITY - 1;
    nb_items -= (nb_items % LB_ARRAY_GRANULARITY);
    if (descr->items) {
        nb_items += HeapSize( GetProcessHeap(), 0, descr->items ) / sizeof(*item);
 item = HeapReAlloc( GetProcessHeap(), 0, descr->items,
                              nb_items * sizeof(LB_ITEMDATA));
    }
    else {
 item = HeapAlloc( GetProcessHeap(), 0,
                              nb_items * sizeof(LB_ITEMDATA));
    }

    if (!item)
    {
        SEND_NOTIFICATION( descr, LBN_ERRSPACE );
        return LB_ERRSPACE;
    }
    descr->items = item;
    return LB_OKAY;
}
