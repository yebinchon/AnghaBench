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
struct TYPE_3__ {int /*<<< orphan*/  ordNumCols; int /*<<< orphan*/  partNumCols; } ;
typedef  TYPE_1__ WindowAgg ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Plan ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  endInRangeFunc ; 
 int /*<<< orphan*/  endOffset ; 
 int /*<<< orphan*/  frameOptions ; 
 int /*<<< orphan*/  inRangeAsc ; 
 int /*<<< orphan*/  inRangeColl ; 
 int /*<<< orphan*/  inRangeNullsFirst ; 
 int /*<<< orphan*/  ordColIdx ; 
 int /*<<< orphan*/  ordCollations ; 
 int /*<<< orphan*/  ordNumCols ; 
 int /*<<< orphan*/  ordOperators ; 
 int /*<<< orphan*/  partColIdx ; 
 int /*<<< orphan*/  partCollations ; 
 int /*<<< orphan*/  partNumCols ; 
 int /*<<< orphan*/  partOperators ; 
 int /*<<< orphan*/  startInRangeFunc ; 
 int /*<<< orphan*/  startOffset ; 
 int /*<<< orphan*/  winref ; 

__attribute__((used)) static void
FUNC9(StringInfo str, const WindowAgg *node)
{
	FUNC4("WINDOWAGG");

	FUNC8(str, (const Plan *) node);

	FUNC7(winref);
	FUNC2(partNumCols);
	FUNC0(partColIdx, node->partNumCols);
	FUNC5(partOperators, node->partNumCols);
	FUNC5(partCollations, node->partNumCols);
	FUNC2(ordNumCols);
	FUNC0(ordColIdx, node->ordNumCols);
	FUNC5(ordOperators, node->ordNumCols);
	FUNC5(ordCollations, node->ordNumCols);
	FUNC2(frameOptions);
	FUNC3(startOffset);
	FUNC3(endOffset);
	FUNC6(startInRangeFunc);
	FUNC6(endInRangeFunc);
	FUNC6(inRangeColl);
	FUNC1(inRangeAsc);
	FUNC1(inRangeNullsFirst);
}