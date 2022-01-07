
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_11__ {size_t slabs_clsid; scalar_t__ prev; scalar_t__ next; int nkey; } ;
typedef TYPE_1__ item ;
struct TYPE_13__ {int total_items; } ;
struct TYPE_12__ {int curr_bytes; int curr_items; } ;


 int ITEM_key (TYPE_1__*) ;
 int ITEM_ntotal (TYPE_1__*) ;
 int STATS_LOCK () ;
 int STATS_UNLOCK () ;
 int assoc_insert (TYPE_1__*,int ) ;
 int hash (int ,int ) ;
 TYPE_1__** heads ;
 int item_stats_sizes_add (TYPE_1__*) ;
 int * sizes ;
 int* sizes_bytes ;
 TYPE_4__ stats ;
 TYPE_3__ stats_state ;
 TYPE_1__** tails ;

void do_item_link_fixup(item *it) {
    item **head, **tail;
    int ntotal = ITEM_ntotal(it);
    uint32_t hv = hash(ITEM_key(it), it->nkey);
    assoc_insert(it, hv);

    head = &heads[it->slabs_clsid];
    tail = &tails[it->slabs_clsid];
    if (it->prev == 0 && *head == 0) *head = it;
    if (it->next == 0 && *tail == 0) *tail = it;
    sizes[it->slabs_clsid]++;
    sizes_bytes[it->slabs_clsid] += ntotal;

    STATS_LOCK();
    stats_state.curr_bytes += ntotal;
    stats_state.curr_items += 1;
    stats.total_items += 1;
    STATS_UNLOCK();

    item_stats_sizes_add(it);

    return;
}
