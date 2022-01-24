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
typedef  int /*<<< orphan*/  ExpandedObjectHeader ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

Datum
FUNC4(Datum d)
{
	ExpandedObjectHeader *eohptr;

	/* Nothing to do if not a read-write expanded-object pointer */
	if (!FUNC3(FUNC1(d)))
		return d;

	/* Now safe to extract the object pointer */
	eohptr = FUNC0(d);

	/* Return the built-in read-only pointer instead of given pointer */
	return FUNC2(eohptr);
}