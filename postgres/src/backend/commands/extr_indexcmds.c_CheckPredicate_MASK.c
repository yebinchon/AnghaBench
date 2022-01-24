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
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_OBJECT_DEFINITION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(Expr *predicate)
{
	/*
	 * transformExpr() should have already rejected subqueries, aggregates,
	 * and window functions, based on the EXPR_KIND_ for a predicate.
	 */

	/*
	 * A predicate using mutable functions is probably wrong, for the same
	 * reasons that we don't allow an index expression to use one.
	 */
	if (FUNC0(predicate))
		FUNC1(ERROR,
				(FUNC2(ERRCODE_INVALID_OBJECT_DEFINITION),
				 FUNC3("functions in index predicate must be marked IMMUTABLE")));
}