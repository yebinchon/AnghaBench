
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int it_flags; } ;
typedef TYPE_2__ item ;
struct TYPE_12__ {struct TYPE_12__* next; } ;
typedef TYPE_3__ io_wrap ;
struct TYPE_13__ {scalar_t__ ileft; scalar_t__ suffixleft; TYPE_3__** suffixlist; TYPE_3__** suffixcurr; TYPE_2__** ilist; TYPE_2__** icurr; TYPE_3__* io_wraplist; TYPE_1__* thread; TYPE_2__* item; } ;
typedef TYPE_4__ conn ;
struct TYPE_10__ {int io_cache; int suffix_cache; } ;


 int ITEM_SLABBED ;
 int assert (int) ;
 int do_cache_free (int ,TYPE_3__*) ;
 int item_remove (TYPE_2__*) ;
 int recache_or_free (TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static void conn_release_items(conn *c) {
    assert(c != ((void*)0));

    if (c->item) {
        item_remove(c->item);
        c->item = 0;
    }

    while (c->ileft > 0) {
        item *it = *(c->icurr);
        assert((it->it_flags & ITEM_SLABBED) == 0);
        item_remove(it);
        c->icurr++;
        c->ileft--;
    }

    if (c->suffixleft != 0) {
        for (; c->suffixleft > 0; c->suffixleft--, c->suffixcurr++) {
            do_cache_free(c->thread->suffix_cache, *(c->suffixcurr));
        }
    }
    c->icurr = c->ilist;
    c->suffixcurr = c->suffixlist;
}
