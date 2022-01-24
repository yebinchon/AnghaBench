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
struct TYPE_3__ {int /*<<< orphan*/  numCols; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Plan ;
typedef  TYPE_1__ Group ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  grpColIdx ; 
 int /*<<< orphan*/  grpCollations ; 
 int /*<<< orphan*/  grpOperators ; 
 int /*<<< orphan*/  numCols ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const Group *node)
{
	FUNC2("GROUP");

	FUNC4(str, (const Plan *) node);

	FUNC1(numCols);
	FUNC0(grpColIdx, node->numCols);
	FUNC3(grpOperators, node->numCols);
	FUNC3(grpCollations, node->numCols);
}