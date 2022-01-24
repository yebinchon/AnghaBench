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
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  NOT_EXPR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

List *
FUNC6(List *new_part_constraints)
{
	Expr	   *defPartConstraint;

	defPartConstraint = FUNC4(new_part_constraints);

	/*
	 * Derive the partition constraints of default partition by negating the
	 * given partition constraints. The partition constraint never evaluates
	 * to NULL, so negating it like this is safe.
	 */
	defPartConstraint = FUNC3(NOT_EXPR,
									 FUNC2(defPartConstraint),
									 -1);

	/* Simplify, to put the negated expression into canonical form */
	defPartConstraint =
		(Expr *) FUNC1(NULL,
										(Node *) defPartConstraint);
	defPartConstraint = FUNC0(defPartConstraint, true);

	return FUNC5(defPartConstraint);
}