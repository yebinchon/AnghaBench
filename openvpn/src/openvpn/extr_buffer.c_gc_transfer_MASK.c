#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct gc_entry {struct gc_entry* next; } ;
struct gc_arena {struct gc_entry* list; } ;

/* Variables and functions */

void
FUNC0(struct gc_arena *dest, struct gc_arena *src)
{
    if (dest && src)
    {
        struct gc_entry *e = src->list;
        if (e)
        {
            while (e->next != NULL)
            {
                e = e->next;
            }
            e->next = dest->list;
            dest->list = src->list;
            src->list = NULL;
        }
    }
}