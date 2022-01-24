#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ ea_magic; } ;
typedef  TYPE_1__ ExpandedArrayHeader ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ EA_MAGIC ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

ExpandedArrayHeader *
FUNC5(Datum d)
{
	/* If it's a writable expanded array already, just return it */
	if (FUNC3(FUNC2(d)))
	{
		ExpandedArrayHeader *eah = (ExpandedArrayHeader *) FUNC1(d);

		FUNC0(eah->ea_magic == EA_MAGIC);
		return eah;
	}

	/* Else expand the hard way */
	d = FUNC4(d, CurrentMemoryContext, NULL);
	return (ExpandedArrayHeader *) FUNC1(d);
}