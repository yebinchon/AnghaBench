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
typedef  int /*<<< orphan*/  WindowClause ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  copiedOrder ; 
 int /*<<< orphan*/  endInRangeFunc ; 
 int /*<<< orphan*/  endOffset ; 
 int /*<<< orphan*/  frameOptions ; 
 int /*<<< orphan*/  inRangeAsc ; 
 int /*<<< orphan*/  inRangeColl ; 
 int /*<<< orphan*/  inRangeNullsFirst ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  orderClause ; 
 int /*<<< orphan*/  partitionClause ; 
 int /*<<< orphan*/  refname ; 
 int /*<<< orphan*/  startInRangeFunc ; 
 int /*<<< orphan*/  startOffset ; 
 int /*<<< orphan*/  winref ; 

__attribute__((used)) static void
FUNC7(StringInfo str, const WindowClause *node)
{
	FUNC3("WINDOWCLAUSE");

	FUNC5(name);
	FUNC5(refname);
	FUNC2(partitionClause);
	FUNC2(orderClause);
	FUNC1(frameOptions);
	FUNC2(startOffset);
	FUNC2(endOffset);
	FUNC4(startInRangeFunc);
	FUNC4(endInRangeFunc);
	FUNC4(inRangeColl);
	FUNC0(inRangeAsc);
	FUNC0(inRangeNullsFirst);
	FUNC6(winref);
	FUNC0(copiedOrder);
}