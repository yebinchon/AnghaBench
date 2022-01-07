
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sl_curr; TYPE_2__* slots; } ;
typedef TYPE_1__ slabclass_t ;
struct TYPE_8__ {scalar_t__ it_flags; size_t orig_clsid; size_t slabs_clsid; struct TYPE_8__* prev; struct TYPE_8__* next; } ;
typedef TYPE_2__ item_chunk ;
typedef TYPE_2__ item ;


 scalar_t__ ITEM_CHUNK ;
 void* ITEM_SLABBED ;
 scalar_t__ ITEM_schunk (TYPE_2__*) ;
 int assert (int) ;
 TYPE_1__* slabclass ;

__attribute__((used)) static void do_slabs_free_chunked(item *it, const size_t size) {
    item_chunk *chunk = (item_chunk *) ITEM_schunk(it);
    slabclass_t *p;

    it->it_flags = ITEM_SLABBED;


    it->prev = 0;

    p = &slabclass[chunk->orig_clsid];
    if (chunk->next) {
        chunk = chunk->next;
        chunk->prev = 0;
    } else {

        chunk = ((void*)0);
    }



    it->prev = 0;
    it->next = p->slots;
    if (it->next) it->next->prev = it;
    p->slots = it;
    p->sl_curr++;

    item_chunk *next_chunk;
    while (chunk) {
        assert(chunk->it_flags == ITEM_CHUNK);
        chunk->it_flags = ITEM_SLABBED;
        p = &slabclass[chunk->slabs_clsid];
        next_chunk = chunk->next;

        chunk->prev = 0;
        chunk->next = p->slots;
        if (chunk->next) chunk->next->prev = chunk;
        p->slots = chunk;
        p->sl_curr++;

        chunk = next_chunk;
    }

    return;
}
