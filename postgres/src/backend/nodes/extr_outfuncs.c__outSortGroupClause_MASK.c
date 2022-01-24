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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  SortGroupClause ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eqop ; 
 int /*<<< orphan*/  hashable ; 
 int /*<<< orphan*/  nulls_first ; 
 int /*<<< orphan*/  sortop ; 
 int /*<<< orphan*/  tleSortGroupRef ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const SortGroupClause *node)
{
	FUNC1("SORTGROUPCLAUSE");

	FUNC3(tleSortGroupRef);
	FUNC2(eqop);
	FUNC2(sortop);
	FUNC0(nulls_first);
	FUNC0(hashable);
}