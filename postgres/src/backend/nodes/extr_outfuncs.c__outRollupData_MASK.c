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
typedef  int /*<<< orphan*/  RollupData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  groupClause ; 
 int /*<<< orphan*/  gsets ; 
 int /*<<< orphan*/  gsets_data ; 
 int /*<<< orphan*/  hashable ; 
 int /*<<< orphan*/  is_hashed ; 
 int /*<<< orphan*/  numGroups ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const RollupData *node)
{
	FUNC3("ROLLUP");

	FUNC2(groupClause);
	FUNC2(gsets);
	FUNC2(gsets_data);
	FUNC1(numGroups, "%.0f");
	FUNC0(hashable);
	FUNC0(is_hashed);
}