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
struct playlist_entry {struct playlist_entry* next; } ;
struct playlist {struct playlist_entry* first; struct playlist_entry* last; struct playlist_entry* current; scalar_t__ current_was_replaced; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct playlist*,struct playlist_entry*,struct playlist_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct playlist*,struct playlist_entry*) ; 

void FUNC2(struct playlist *pl, struct playlist *source_pl)
{
    struct playlist_entry *add_after = pl->current;
    if (pl->current && pl->current_was_replaced)
        add_after = pl->current->next;
    if (!add_after)
        add_after = pl->last;

    while (source_pl->first) {
        struct playlist_entry *e = source_pl->first;
        FUNC1(source_pl, e);
        FUNC0(pl, add_after, e);
        add_after = e;
    }
}