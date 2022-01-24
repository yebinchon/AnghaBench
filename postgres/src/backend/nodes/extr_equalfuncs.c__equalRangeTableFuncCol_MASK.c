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
typedef  int /*<<< orphan*/  RangeTableFuncCol ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  coldefexpr ; 
 int /*<<< orphan*/  colexpr ; 
 int /*<<< orphan*/  colname ; 
 int /*<<< orphan*/  for_ordinality ; 
 int /*<<< orphan*/  is_not_null ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  typeName ; 

__attribute__((used)) static bool
FUNC4(const RangeTableFuncCol *a, const RangeTableFuncCol *b)
{
	FUNC3(colname);
	FUNC1(typeName);
	FUNC2(for_ordinality);
	FUNC2(is_not_null);
	FUNC1(colexpr);
	FUNC1(coldefexpr);
	FUNC0(location);

	return true;
}