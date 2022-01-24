#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ ea_magic; } ;
typedef  TYPE_1__ ExpandedArrayHeader ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  AnyArrayType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ EA_MAGIC ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

AnyArrayType *
FUNC5(Datum d)
{
	ExpandedArrayHeader *eah;

	/*
	 * If it's an expanded array (RW or RO), return the header pointer.
	 */
	if (FUNC4(FUNC2(d)))
	{
		eah = (ExpandedArrayHeader *) FUNC1(d);
		FUNC0(eah->ea_magic == EA_MAGIC);
		return (AnyArrayType *) eah;
	}

	/* Else do regular detoasting as needed */
	return (AnyArrayType *) FUNC3(d);
}