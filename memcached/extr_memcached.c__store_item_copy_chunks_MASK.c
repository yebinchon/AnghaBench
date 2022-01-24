#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ size; scalar_t__ used; int data; struct TYPE_9__* next; } ;
typedef  TYPE_1__ item_chunk ;
struct TYPE_10__ {int it_flags; } ;
typedef  TYPE_2__ item ;

/* Variables and functions */
 int ITEM_CHUNKED ; 
 int FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int const) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 

__attribute__((used)) static int FUNC5(item *d_it, item *s_it, const int len) {
    item_chunk *dch = (item_chunk *) FUNC1(d_it);
    /* Advance dch until we find free space */
    while (dch->size == dch->used) {
        if (dch->next) {
            dch = dch->next;
        } else {
            break;
        }
    }

    if (s_it->it_flags & ITEM_CHUNKED) {
        int remain = len;
        item_chunk *sch = (item_chunk *) FUNC1(s_it);
        int copied = 0;
        /* Fills dch's to capacity, not straight copy sch in case data is
         * being added or removed (ie append/prepend)
         */
        while (sch && dch && remain) {
            FUNC2(dch->used <= dch->size);
            int todo = (dch->size - dch->used < sch->used - copied)
                ? dch->size - dch->used : sch->used - copied;
            if (remain < todo)
                todo = remain;
            FUNC4(dch->data + dch->used, sch->data + copied, todo);
            dch->used += todo;
            copied += todo;
            remain -= todo;
            FUNC2(dch->used <= dch->size);
            if (dch->size == dch->used) {
                item_chunk *tch = FUNC3(dch, remain);
                if (tch) {
                    dch = tch;
                } else {
                    return -1;
                }
            }
            FUNC2(copied <= sch->used);
            if (copied == sch->used) {
                copied = 0;
                sch = sch->next;
            }
        }
        /* assert that the destination had enough space for the source */
        FUNC2(remain == 0);
    } else {
        int done = 0;
        /* Fill dch's via a non-chunked item. */
        while (len > done && dch) {
            int todo = (dch->size - dch->used < len - done)
                ? dch->size - dch->used : len - done;
            //assert(dch->size - dch->used != 0);
            FUNC4(dch->data + dch->used, FUNC0(s_it) + done, todo);
            done += todo;
            dch->used += todo;
            FUNC2(dch->used <= dch->size);
            if (dch->size == dch->used) {
                item_chunk *tch = FUNC3(dch, len - done);
                if (tch) {
                    dch = tch;
                } else {
                    return -1;
                }
            }
        }
        FUNC2(len == done);
    }
    return 0;
}