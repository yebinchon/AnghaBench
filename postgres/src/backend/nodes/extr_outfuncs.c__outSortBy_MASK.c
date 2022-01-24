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
typedef  int /*<<< orphan*/  SortBy ;

/* Variables and functions */
 int /*<<< orphan*/  SortByDir ; 
 int /*<<< orphan*/  SortByNulls ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  sortby_dir ; 
 int /*<<< orphan*/  sortby_nulls ; 
 int /*<<< orphan*/  const* useOp ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const SortBy *node)
{
	FUNC3("SORTBY");

	FUNC2(node);
	FUNC0(sortby_dir, SortByDir);
	FUNC0(sortby_nulls, SortByNulls);
	FUNC2(useOp);
	FUNC1(location);
}