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
struct TYPE_4__ {int /*<<< orphan*/  publications; struct TYPE_4__* slotname; struct TYPE_4__* conninfo; struct TYPE_4__* name; } ;
typedef  TYPE_1__ Subscription ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void
FUNC2(Subscription *sub)
{
	FUNC1(sub->name);
	FUNC1(sub->conninfo);
	if (sub->slotname)
		FUNC1(sub->slotname);
	FUNC0(sub->publications);
	FUNC1(sub);
}