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
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  RangeVar ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 

TupleDesc
FUNC6(const char *relname)
{
	RangeVar   *relvar;
	Relation	rel;
	TupleDesc	tupdesc;
	List	   *relname_list;

	/* Open relation and copy the tuple description */
	relname_list = FUNC5(relname);
	relvar = FUNC2(relname_list);
	rel = FUNC4(relvar, AccessShareLock);
	tupdesc = FUNC0(FUNC1(rel));
	FUNC3(rel, AccessShareLock);

	return tupdesc;
}