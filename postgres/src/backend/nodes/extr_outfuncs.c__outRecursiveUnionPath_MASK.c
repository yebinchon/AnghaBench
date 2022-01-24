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
typedef  int /*<<< orphan*/  RecursiveUnionPath ;
typedef  int /*<<< orphan*/  Path ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  distinctList ; 
 int /*<<< orphan*/  leftpath ; 
 int /*<<< orphan*/  numGroups ; 
 int /*<<< orphan*/  rightpath ; 
 int /*<<< orphan*/  wtParam ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const RecursiveUnionPath *node)
{
	FUNC3("RECURSIVEUNIONPATH");

	FUNC4(str, (const Path *) node);

	FUNC2(leftpath);
	FUNC2(rightpath);
	FUNC2(distinctList);
	FUNC1(wtParam);
	FUNC0(numGroups, "%.0f");
}