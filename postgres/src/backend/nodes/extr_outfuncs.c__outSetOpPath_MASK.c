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
typedef  int /*<<< orphan*/  SetOpPath ;
typedef  int /*<<< orphan*/  Path ;

/* Variables and functions */
 int /*<<< orphan*/  SetOpCmd ; 
 int /*<<< orphan*/  SetOpStrategy ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  cmd ; 
 int /*<<< orphan*/  distinctList ; 
 int /*<<< orphan*/  firstFlag ; 
 int /*<<< orphan*/  flagColIdx ; 
 int /*<<< orphan*/  numGroups ; 
 int /*<<< orphan*/  strategy ; 
 int /*<<< orphan*/  subpath ; 

__attribute__((used)) static void
FUNC6(StringInfo str, const SetOpPath *node)
{
	FUNC4("SETOPPATH");

	FUNC5(str, (const Path *) node);

	FUNC3(subpath);
	FUNC0(cmd, SetOpCmd);
	FUNC0(strategy, SetOpStrategy);
	FUNC3(distinctList);
	FUNC2(flagColIdx);
	FUNC2(firstFlag);
	FUNC1(numGroups, "%.0f");
}