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
struct gc_entry_special {void (* free_fnc ) (void*) ;struct gc_entry_special* next; void* addr; } ;
struct gc_arena {struct gc_entry_special* list_special; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC1 (struct gc_entry_special*) ; 
 int /*<<< orphan*/  file ; 
 int /*<<< orphan*/  line ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC4(void *addr, void (free_function)(void *), struct gc_arena *a)
{
    FUNC0(a);
    struct gc_entry_special *e;
#ifdef DMALLOC
    e = (struct gc_entry_special *) openvpn_dmalloc(file, line, sizeof(struct gc_entry_special));
#else
    e = (struct gc_entry_special *) FUNC2(sizeof(struct gc_entry_special));
#endif
    FUNC1(e);
    e->free_fnc = free_function;
    e->addr = addr;

    e->next = a->list_special;
    a->list_special = e;
}