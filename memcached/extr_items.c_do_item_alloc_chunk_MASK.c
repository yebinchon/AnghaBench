#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int slabs_clsid; size_t size; int /*<<< orphan*/  it_flags; scalar_t__ used; struct TYPE_5__* next; struct TYPE_5__* prev; int /*<<< orphan*/  head; } ;
typedef  TYPE_1__ item_chunk ;
struct TYPE_6__ {size_t slab_chunk_size_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  ITEM_CHUNK ; 
 scalar_t__ FUNC0 (size_t,unsigned int) ; 
 TYPE_2__ settings ; 
 unsigned int FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

item_chunk *FUNC4(item_chunk *ch, const size_t bytes_remain) {
    // TODO: Should be a cleaner way of finding real size with slabber calls
    size_t size = bytes_remain + sizeof(item_chunk);
    if (size > settings.slab_chunk_size_max)
        size = settings.slab_chunk_size_max;
    unsigned int id = FUNC1(size);

    item_chunk *nch = (item_chunk *) FUNC0(size, id);
    if (nch == NULL)
        return NULL;

    // link in.
    // ITEM_CHUNK[ED] bits need to be protected by the slabs lock.
    FUNC2();
    nch->head = ch->head;
    ch->next = nch;
    nch->prev = ch;
    nch->next = 0;
    nch->used = 0;
    nch->slabs_clsid = id;
    nch->size = size - sizeof(item_chunk);
    nch->it_flags |= ITEM_CHUNK;
    FUNC3();
    return nch;
}