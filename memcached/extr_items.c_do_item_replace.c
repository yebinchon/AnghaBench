
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int it_flags; int nbytes; int nkey; } ;
typedef TYPE_1__ item ;


 int ITEM_SLABBED ;
 int ITEM_key (TYPE_1__*) ;
 int MEMCACHED_ITEM_REPLACE (int ,int ,int ,int ,int ,int ) ;
 int assert (int) ;
 int do_item_link (TYPE_1__*,int const) ;
 int do_item_unlink (TYPE_1__*,int const) ;

int do_item_replace(item *it, item *new_it, const uint32_t hv) {
    MEMCACHED_ITEM_REPLACE(ITEM_key(it), it->nkey, it->nbytes,
                           ITEM_key(new_it), new_it->nkey, new_it->nbytes);
    assert((it->it_flags & ITEM_SLABBED) == 0);

    do_item_unlink(it, hv);
    return do_item_link(new_it, hv);
}
