
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_6__ {int nkey; struct TYPE_6__* h_next; } ;
typedef TYPE_1__ item ;


 int ITEM_key (TYPE_1__*) ;
 int MEMCACHED_ASSOC_INSERT (int ,int ) ;
 unsigned int expand_bucket ;
 scalar_t__ expanding ;
 size_t const hashmask (scalar_t__) ;
 scalar_t__ hashpower ;
 TYPE_1__** old_hashtable ;
 TYPE_1__** primary_hashtable ;

int assoc_insert(item *it, const uint32_t hv) {
    unsigned int oldbucket;



    if (expanding &&
        (oldbucket = (hv & hashmask(hashpower - 1))) >= expand_bucket)
    {
        it->h_next = old_hashtable[oldbucket];
        old_hashtable[oldbucket] = it;
    } else {
        it->h_next = primary_hashtable[hv & hashmask(hashpower)];
        primary_hashtable[hv & hashmask(hashpower)] = it;
    }

    MEMCACHED_ASSOC_INSERT(ITEM_key(it), it->nkey);
    return 1;
}
