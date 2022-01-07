
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int it_flags; scalar_t__ nbytes; size_t slabs_clsid; struct TYPE_6__* next; struct TYPE_6__* prev; } ;
typedef TYPE_1__ item ;


 int assert (int) ;
 TYPE_1__** heads ;
 TYPE_1__** tails ;

item *do_item_crawl_q(item *it) {
    item **head, **tail;
    assert(it->it_flags == 1);
    assert(it->nbytes == 0);
    head = &heads[it->slabs_clsid];
    tail = &tails[it->slabs_clsid];


    if (it->prev == 0) {
        assert(*head == it);
        if (it->next) {
            *head = it->next;
            assert(it->next->prev == it);
            it->next->prev = 0;
        }
        return ((void*)0);
    }



    assert(it->prev != it);
    if (it->prev) {
        if (*head == it->prev) {

            *head = it;
        }
        if (*tail == it) {

            *tail = it->prev;
        }
        assert(it->next != it);
        if (it->next) {
            assert(it->prev->next == it);
            it->prev->next = it->next;
            it->next->prev = it->prev;
        } else {

            it->prev->next = 0;
        }

        it->next = it->prev;
        it->prev = it->next->prev;
        it->next->prev = it;

        if (it->prev) {
            it->prev->next = it;
        }
    }
    assert(it->next != it);
    assert(it->prev != it);

    return it->next;
}
