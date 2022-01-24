#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ depCount; struct TYPE_6__* pending_next; } ;
typedef  TYPE_1__ TocEntry ;
typedef  scalar_t__ RestorePass ;
typedef  int /*<<< orphan*/  ParallelReadyList ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(TocEntry *pending_list,
				   ParallelReadyList *ready_list,
				   RestorePass pass)
{
	TocEntry   *te;
	TocEntry   *next_te;

	for (te = pending_list->pending_next; te != pending_list; te = next_te)
	{
		/* must save list link before possibly removing te from list */
		next_te = te->pending_next;

		if (te->depCount == 0 &&
			FUNC0(te) == pass)
		{
			/* Remove it from pending_list ... */
			FUNC1(te);
			/* ... and add to ready_list */
			FUNC2(ready_list, te);
		}
	}
}