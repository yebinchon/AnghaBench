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
typedef  int /*<<< orphan*/  SpecialJoinInfo ;

/* Variables and functions */
 int /*<<< orphan*/  JoinType ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  delay_upper_joins ; 
 int /*<<< orphan*/  jointype ; 
 int /*<<< orphan*/  lhs_strict ; 
 int /*<<< orphan*/  min_lefthand ; 
 int /*<<< orphan*/  min_righthand ; 
 int /*<<< orphan*/  semi_can_btree ; 
 int /*<<< orphan*/  semi_can_hash ; 
 int /*<<< orphan*/  semi_operators ; 
 int /*<<< orphan*/  semi_rhs_exprs ; 
 int /*<<< orphan*/  syn_lefthand ; 
 int /*<<< orphan*/  syn_righthand ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const SpecialJoinInfo *node)
{
	FUNC4("SPECIALJOININFO");

	FUNC0(min_lefthand);
	FUNC0(min_righthand);
	FUNC0(syn_lefthand);
	FUNC0(syn_righthand);
	FUNC2(jointype, JoinType);
	FUNC1(lhs_strict);
	FUNC1(delay_upper_joins);
	FUNC1(semi_can_btree);
	FUNC1(semi_can_hash);
	FUNC3(semi_operators);
	FUNC3(semi_rhs_exprs);
}