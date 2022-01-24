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
struct playlist_entry {int /*<<< orphan*/  prev; } ;
struct playlist {int current_was_replaced; struct playlist_entry* current; int /*<<< orphan*/  last; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct playlist*,int /*<<< orphan*/ ,struct playlist_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct playlist*,struct playlist_entry*) ; 

void FUNC2(struct playlist *pl, struct playlist_entry *entry,
                   struct playlist_entry *at)
{
    if (entry == at)
        return;

    struct playlist_entry *save_current = pl->current;
    bool save_replaced = pl->current_was_replaced;

    FUNC1(pl, entry);
    FUNC0(pl, at ? at->prev : pl->last, entry);

    pl->current = save_current;
    pl->current_was_replaced = save_replaced;
}