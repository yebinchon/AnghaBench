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
struct gc_arena {int dummy; } ;
struct client_nat_option_list {int n; struct client_nat_entry* entries; } ;
struct client_nat_entry {int /*<<< orphan*/  foreign_network; int /*<<< orphan*/  netmask; int /*<<< orphan*/  network; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  IA_NET_ORDER ; 
 int /*<<< orphan*/  FUNC0 (struct gc_arena*) ; 
 struct gc_arena FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gc_arena*) ; 

void
FUNC4(const struct client_nat_option_list *list, int msglevel)
{
    struct gc_arena gc = FUNC1();
    int i;

    FUNC2(msglevel, "*** CNAT list");
    if (list)
    {
        for (i = 0; i < list->n; ++i)
        {
            const struct client_nat_entry *e = &list->entries[i];
            FUNC2(msglevel, "  CNAT[%d] t=%d %s/%s/%s",
                i,
                e->type,
                FUNC3(e->network, IA_NET_ORDER, &gc),
                FUNC3(e->netmask, IA_NET_ORDER, &gc),
                FUNC3(e->foreign_network, IA_NET_ORDER, &gc));
        }
    }
    FUNC0(&gc);
}