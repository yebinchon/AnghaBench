
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int nkey; } ;
typedef TYPE_1__ item ;


 int ITEM_key (TYPE_1__*) ;
 int do_item_unlink (TYPE_1__*,int ) ;
 int hash (int ,int ) ;
 int item_lock (int ) ;
 int item_unlock (int ) ;

void item_unlink(item *item) {
    uint32_t hv;
    hv = hash(ITEM_key(item), item->nkey);
    item_lock(hv);
    do_item_unlink(item, hv);
    item_unlock(hv);
}
