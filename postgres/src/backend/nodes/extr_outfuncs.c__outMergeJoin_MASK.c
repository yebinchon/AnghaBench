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
struct TYPE_3__ {int /*<<< orphan*/  mergeclauses; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ MergeJoin ;
typedef  int /*<<< orphan*/  Join ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mergeCollations ; 
 int /*<<< orphan*/  mergeFamilies ; 
 int /*<<< orphan*/  mergeNullsFirst ; 
 int /*<<< orphan*/  mergeStrategies ; 
 int /*<<< orphan*/  mergeclauses ; 
 int /*<<< orphan*/  skip_mark_restore ; 

__attribute__((used)) static void
FUNC8(StringInfo str, const MergeJoin *node)
{
	int			numCols;

	FUNC4("MERGEJOIN");

	FUNC6(str, (const Join *) node);

	FUNC1(skip_mark_restore);
	FUNC3(mergeclauses);

	numCols = FUNC7(node->mergeclauses);

	FUNC5(mergeFamilies, numCols);
	FUNC5(mergeCollations, numCols);
	FUNC2(mergeStrategies, numCols);
	FUNC0(mergeNullsFirst, numCols);
}