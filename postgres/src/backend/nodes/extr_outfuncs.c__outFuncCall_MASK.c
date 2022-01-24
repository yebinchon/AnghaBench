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
typedef  int /*<<< orphan*/  FuncCall ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  agg_distinct ; 
 int /*<<< orphan*/  agg_filter ; 
 int /*<<< orphan*/  agg_order ; 
 int /*<<< orphan*/  agg_star ; 
 int /*<<< orphan*/  agg_within_group ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  func_variadic ; 
 int /*<<< orphan*/  funcname ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  over ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const FuncCall *node)
{
	FUNC3("FUNCCALL");

	FUNC2(funcname);
	FUNC2(args);
	FUNC2(agg_order);
	FUNC2(agg_filter);
	FUNC0(agg_within_group);
	FUNC0(agg_star);
	FUNC0(agg_distinct);
	FUNC0(func_variadic);
	FUNC2(over);
	FUNC1(location);
}