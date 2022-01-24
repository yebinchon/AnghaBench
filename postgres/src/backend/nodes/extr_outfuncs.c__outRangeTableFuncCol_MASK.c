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
typedef  int /*<<< orphan*/  RangeTableFuncCol ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  coldefexpr ; 
 int /*<<< orphan*/  colexpr ; 
 int /*<<< orphan*/  colname ; 
 int /*<<< orphan*/  for_ordinality ; 
 int /*<<< orphan*/  is_not_null ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  typeName ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const RangeTableFuncCol *node)
{
	FUNC3("RANGETABLEFUNCCOL");

	FUNC4(colname);
	FUNC2(typeName);
	FUNC0(for_ordinality);
	FUNC0(is_not_null);
	FUNC2(colexpr);
	FUNC2(coldefexpr);
	FUNC1(location);
}