
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_entry {struct gc_entry* next; } ;
struct gc_arena {struct gc_entry* list; } ;



void
gc_transfer(struct gc_arena *dest, struct gc_arena *src)
{
    if (dest && src)
    {
        struct gc_entry *e = src->list;
        if (e)
        {
            while (e->next != ((void*)0))
            {
                e = e->next;
            }
            e->next = dest->list;
            dest->list = src->list;
            src->list = ((void*)0);
        }
    }
}
