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
typedef  int /*<<< orphan*/  TupleDesc ;
typedef  int /*<<< orphan*/  HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG4 ; 
 int* Nulls ; 
 int /*<<< orphan*/  attrtypes ; 
 int /*<<< orphan*/  boot_reldesc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int numattr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  values ; 

void
FUNC6(void)
{
	HeapTuple	tuple;
	TupleDesc	tupDesc;
	int			i;

	FUNC1(DEBUG4, "inserting row with %d columns", numattr);

	tupDesc = FUNC0(numattr, attrtypes);
	tuple = FUNC2(tupDesc, values, Nulls);
	FUNC4(tupDesc);				/* just free's tupDesc, not the attrtypes */

	FUNC5(boot_reldesc, tuple);
	FUNC3(tuple);
	FUNC1(DEBUG4, "row inserted");

	/*
	 * Reset null markers for next tuple
	 */
	for (i = 0; i < numattr; i++)
		Nulls[i] = false;
}