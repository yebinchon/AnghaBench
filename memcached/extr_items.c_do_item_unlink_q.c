
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int item_hdr ;
struct TYPE_6__ {size_t slabs_clsid; int it_flags; scalar_t__ nbytes; struct TYPE_6__* next; struct TYPE_6__* prev; } ;
typedef TYPE_1__ item ;


 int ITEM_HDR ;
 scalar_t__ ITEM_ntotal (TYPE_1__*) ;
 int assert (int) ;
 TYPE_1__** heads ;
 int * sizes ;
 int * sizes_bytes ;
 TYPE_1__** tails ;

__attribute__((used)) static void do_item_unlink_q(item *it) {
    item **head, **tail;
    head = &heads[it->slabs_clsid];
    tail = &tails[it->slabs_clsid];

    if (*head == it) {
        assert(it->prev == 0);
        *head = it->next;
    }
    if (*tail == it) {
        assert(it->next == 0);
        *tail = it->prev;
    }
    assert(it->next != it);
    assert(it->prev != it);

    if (it->next) it->next->prev = it->prev;
    if (it->prev) it->prev->next = it->next;
    sizes[it->slabs_clsid]--;







    sizes_bytes[it->slabs_clsid] -= ITEM_ntotal(it);


    return;
}
