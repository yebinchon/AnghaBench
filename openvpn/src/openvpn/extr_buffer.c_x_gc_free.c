
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_entry {struct gc_entry* next; } ;
struct gc_arena {struct gc_entry* list; } ;


 int free (struct gc_entry*) ;

void
x_gc_free(struct gc_arena *a)
{
    struct gc_entry *e;
    e = a->list;
    a->list = ((void*)0);

    while (e != ((void*)0))
    {
        struct gc_entry *next = e->next;
        free(e);
        e = next;
    }
}
