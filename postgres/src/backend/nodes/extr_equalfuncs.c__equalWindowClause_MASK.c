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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
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

__attribute__((used)) static bool
FUNC3(const WindowClause *a, const WindowClause *b)
{
	FUNC2(name);
	FUNC2(refname);
	FUNC0(partitionClause);
	FUNC0(orderClause);
	FUNC1(frameOptions);
	FUNC0(startOffset);
	FUNC0(endOffset);
	FUNC1(startInRangeFunc);
	FUNC1(endInRangeFunc);
	FUNC1(inRangeColl);
	FUNC1(inRangeAsc);
	FUNC1(inRangeNullsFirst);
	FUNC1(winref);
	FUNC1(copiedOrder);

	return true;
}