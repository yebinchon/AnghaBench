
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int it_flags; scalar_t__ refcount; int nbytes; int nkey; } ;
typedef TYPE_1__ item ;


 int ITEM_SLABBED ;
 int ITEM_key (TYPE_1__*) ;
 int MEMCACHED_ITEM_REMOVE (int ,int ,int ) ;
 int assert (int) ;
 int item_free (TYPE_1__*) ;
 scalar_t__ refcount_decr (TYPE_1__*) ;

void do_item_remove(item *it) {
    MEMCACHED_ITEM_REMOVE(ITEM_key(it), it->nkey, it->nbytes);
    assert((it->it_flags & ITEM_SLABBED) == 0);
    assert(it->refcount > 0);

    if (refcount_decr(it) == 0) {
        item_free(it);
    }
}
