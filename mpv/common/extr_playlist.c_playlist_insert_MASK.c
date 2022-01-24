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
struct playlist_entry {struct playlist* pl; struct playlist_entry* prev; struct playlist_entry* next; } ;
struct playlist {struct playlist_entry* last; struct playlist_entry* first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct playlist*,struct playlist_entry*) ; 

void FUNC2(struct playlist *pl, struct playlist_entry *after,
                     struct playlist_entry *add)
{
    FUNC0(pl && add->pl == NULL && add->next == NULL && add->prev == NULL);
    if (after) {
        FUNC0(after->pl == pl);
        FUNC0(pl->first && pl->last);
    }
    add->prev = after;
    if (after) {
        add->next = after->next;
        after->next = add;
    } else {
        add->next = pl->first;
        pl->first = add;
    }
    if (add->next) {
        add->next->prev = add;
    } else {
        pl->last = add;
    }
    add->pl = pl;
    FUNC1(pl, add);
}