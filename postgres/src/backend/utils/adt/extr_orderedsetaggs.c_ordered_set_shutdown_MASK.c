#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* qstate; int /*<<< orphan*/ * sortstate; } ;
struct TYPE_3__ {scalar_t__ tupslot; } ;
typedef  TYPE_2__ OSAPerGroupState ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(Datum arg)
{
	OSAPerGroupState *osastate = (OSAPerGroupState *) FUNC0(arg);

	/* Tuplesort object might have temp files. */
	if (osastate->sortstate)
		FUNC2(osastate->sortstate);
	osastate->sortstate = NULL;
	/* The tupleslot probably can't be holding a pin, but let's be safe. */
	if (osastate->qstate->tupslot)
		FUNC1(osastate->qstate->tupslot);
}