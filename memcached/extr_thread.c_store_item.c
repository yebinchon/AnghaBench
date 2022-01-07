
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int nkey; } ;
typedef TYPE_1__ item ;
typedef enum store_item_type { ____Placeholder_store_item_type } store_item_type ;
typedef int conn ;


 int ITEM_key (TYPE_1__*) ;
 int do_store_item (TYPE_1__*,int,int *,int ) ;
 int hash (int ,int ) ;
 int item_lock (int ) ;
 int item_unlock (int ) ;

enum store_item_type store_item(item *item, int comm, conn* c) {
    enum store_item_type ret;
    uint32_t hv;

    hv = hash(ITEM_key(item), item->nkey);
    item_lock(hv);
    ret = do_store_item(item, comm, c, hv);
    item_unlock(hv);
    return ret;
}
