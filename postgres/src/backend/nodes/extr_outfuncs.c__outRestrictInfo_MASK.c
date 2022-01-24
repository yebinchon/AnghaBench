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
typedef  int /*<<< orphan*/  RestrictInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  can_join ; 
 int /*<<< orphan*/  clause ; 
 int /*<<< orphan*/  clause_relids ; 
 int /*<<< orphan*/  hashjoinoperator ; 
 int /*<<< orphan*/  is_pushed_down ; 
 int /*<<< orphan*/  leakproof ; 
 int /*<<< orphan*/  left_em ; 
 int /*<<< orphan*/  left_relids ; 
 int /*<<< orphan*/  mergeopfamilies ; 
 int /*<<< orphan*/  norm_selec ; 
 int /*<<< orphan*/  nullable_relids ; 
 int /*<<< orphan*/  orclause ; 
 int /*<<< orphan*/  outer_is_left ; 
 int /*<<< orphan*/  outer_relids ; 
 int /*<<< orphan*/  outer_selec ; 
 int /*<<< orphan*/  outerjoin_delayed ; 
 int /*<<< orphan*/  pseudoconstant ; 
 int /*<<< orphan*/  required_relids ; 
 int /*<<< orphan*/  right_em ; 
 int /*<<< orphan*/  right_relids ; 
 int /*<<< orphan*/  security_level ; 

__attribute__((used)) static void
FUNC7(StringInfo str, const RestrictInfo *node)
{
	FUNC4("RESTRICTINFO");

	/* NB: this isn't a complete set of fields */
	FUNC3(clause);
	FUNC1(is_pushed_down);
	FUNC1(outerjoin_delayed);
	FUNC1(can_join);
	FUNC1(pseudoconstant);
	FUNC1(leakproof);
	FUNC6(security_level);
	FUNC0(clause_relids);
	FUNC0(required_relids);
	FUNC0(outer_relids);
	FUNC0(nullable_relids);
	FUNC0(left_relids);
	FUNC0(right_relids);
	FUNC3(orclause);
	/* don't write parent_ec, leads to infinite recursion in plan tree dump */
	FUNC2(norm_selec, "%.4f");
	FUNC2(outer_selec, "%.4f");
	FUNC3(mergeopfamilies);
	/* don't write left_ec, leads to infinite recursion in plan tree dump */
	/* don't write right_ec, leads to infinite recursion in plan tree dump */
	FUNC3(left_em);
	FUNC3(right_em);
	FUNC1(outer_is_left);
	FUNC5(hashjoinoperator);
}