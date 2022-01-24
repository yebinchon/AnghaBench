#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* next; int /*<<< orphan*/  sqlstate; int /*<<< orphan*/  reason; } ;
typedef  TYPE_1__ MYSQLI_WARNING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(MYSQLI_WARNING *w)
{
	MYSQLI_WARNING *n;

	while (w) {
		n = w;
		FUNC1(&(w->reason));
		FUNC1(&(w->sqlstate));
		w = w->next;
		FUNC0(n);
	}
}