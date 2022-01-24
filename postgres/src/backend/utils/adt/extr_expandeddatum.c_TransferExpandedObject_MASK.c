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
struct TYPE_4__ {int /*<<< orphan*/  eoh_context; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ ExpandedObjectHeader ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

Datum
FUNC6(Datum d, MemoryContext new_parent)
{
	ExpandedObjectHeader *eohptr = FUNC1(d);

	/* Assert caller gave a R/W pointer */
	FUNC0(FUNC5(FUNC2(d)));

	/* Transfer ownership */
	FUNC4(eohptr->eoh_context, new_parent);

	/* Return the object's standard read-write pointer */
	return FUNC3(eohptr);
}