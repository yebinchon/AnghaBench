
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int nkey; } ;
typedef TYPE_1__ item ;


 int ITEM_key (TYPE_1__*) ;
 int do_item_link (TYPE_1__*,int ) ;
 int hash (int ,int ) ;
 int item_lock (int ) ;
 int item_unlock (int ) ;

int item_link(item *item) {
    int ret;
    uint32_t hv;

    hv = hash(ITEM_key(item), item->nkey);
    item_lock(hv);
    ret = do_item_link(item, hv);
    item_unlock(hv);
    return ret;
}
