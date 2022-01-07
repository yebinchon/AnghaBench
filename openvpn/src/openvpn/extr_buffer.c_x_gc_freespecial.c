
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_entry_special {int addr; int (* free_fnc ) (int ) ;struct gc_entry_special* next; } ;
struct gc_arena {struct gc_entry_special* list_special; } ;


 int free (struct gc_entry_special*) ;
 int stub1 (int ) ;

void
x_gc_freespecial(struct gc_arena *a)
{
    struct gc_entry_special *e;
    e = a->list_special;
    a->list_special = ((void*)0);

    while (e != ((void*)0))
    {
        struct gc_entry_special *next = e->next;
        e->free_fnc(e->addr);
        free(e);
        e = next;
    }
}
