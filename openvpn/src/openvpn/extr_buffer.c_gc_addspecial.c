
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_entry_special {void (* free_fnc ) (void*) ;struct gc_entry_special* next; void* addr; } ;
struct gc_arena {struct gc_entry_special* list_special; } ;


 int ASSERT (struct gc_arena*) ;
 int check_malloc_return (struct gc_entry_special*) ;
 int file ;
 int line ;
 scalar_t__ malloc (int) ;
 scalar_t__ openvpn_dmalloc (int ,int ,int) ;

void
gc_addspecial(void *addr, void (free_function)(void *), struct gc_arena *a)
{
    ASSERT(a);
    struct gc_entry_special *e;



    e = (struct gc_entry_special *) malloc(sizeof(struct gc_entry_special));

    check_malloc_return(e);
    e->free_fnc = free_function;
    e->addr = addr;

    e->next = a->list_special;
    a->list_special = e;
}
