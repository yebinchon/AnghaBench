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
struct r_magic {int dummy; } ;
struct mlist {int /*<<< orphan*/  nmagic; int /*<<< orphan*/  mapped; struct r_magic* magic; struct mlist* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct r_magic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlist*) ; 

__attribute__((used)) static void FUNC2(struct mlist *mlist) {
	struct mlist *ml;
	if (!mlist) {
		return;
	}
	for (ml = mlist->next; ml != mlist;) {
		struct mlist *next = ml->next;
		struct r_magic *mg = ml->magic;
		FUNC0 (mg, ml->mapped, ml->nmagic);
		FUNC1 (ml);
		ml = next;
	}
	FUNC1 (ml);
}