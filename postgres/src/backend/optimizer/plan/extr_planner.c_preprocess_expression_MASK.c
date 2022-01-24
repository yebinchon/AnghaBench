#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ hasSubLinks; } ;
struct TYPE_7__ {int query_level; TYPE_3__* parse; scalar_t__ hasJoinRTEs; } ;
typedef  TYPE_1__ PlannerInfo ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int EXPRKIND_QUAL ; 
 int EXPRKIND_RTFUNC ; 
 int EXPRKIND_RTFUNC_LATERAL ; 
 int EXPRKIND_TABLEFUNC ; 
 int EXPRKIND_TABLESAMPLE ; 
 int EXPRKIND_VALUES ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static Node *
FUNC8(PlannerInfo *root, Node *expr, int kind)
{
	/*
	 * Fall out quickly if expression is empty.  This occurs often enough to
	 * be worth checking.  Note that null->null is the correct conversion for
	 * implicit-AND result format, too.
	 */
	if (expr == NULL)
		return NULL;

	/*
	 * If the query has any join RTEs, replace join alias variables with
	 * base-relation variables.  We must do this first, since any expressions
	 * we may extract from the joinaliasvars lists have not been preprocessed.
	 * For example, if we did this after sublink processing, sublinks expanded
	 * out from join aliases would not get processed.  But we can skip this in
	 * non-lateral RTE functions, VALUES lists, and TABLESAMPLE clauses, since
	 * they can't contain any Vars of the current query level.
	 */
	if (root->hasJoinRTEs &&
		!(kind == EXPRKIND_RTFUNC ||
		  kind == EXPRKIND_VALUES ||
		  kind == EXPRKIND_TABLESAMPLE ||
		  kind == EXPRKIND_TABLEFUNC))
		expr = FUNC4(root->parse, expr);

	/*
	 * Simplify constant expressions.  For function RTEs, this was already
	 * done by preprocess_function_rtes ... but we have to do it again if the
	 * RTE is LATERAL and might have contained join alias variables.
	 *
	 * Note: an essential effect of this is to convert named-argument function
	 * calls to positional notation and insert the current actual values of
	 * any default arguments for functions.  To ensure that happens, we *must*
	 * process all expressions here.  Previous PG versions sometimes skipped
	 * const-simplification if it didn't seem worth the trouble, but we can't
	 * do that anymore.
	 *
	 * Note: this also flattens nested AND and OR expressions into N-argument
	 * form.  All processing of a qual expression after this point must be
	 * careful to maintain AND/OR flatness --- that is, do not generate a tree
	 * with AND directly under AND, nor OR directly under OR.
	 */
	if (!(kind == EXPRKIND_RTFUNC ||
		  (kind == EXPRKIND_RTFUNC_LATERAL && !root->hasJoinRTEs)))
		expr = FUNC3(root, expr);

	/*
	 * If it's a qual or havingQual, canonicalize it.
	 */
	if (kind == EXPRKIND_QUAL)
	{
		expr = (Node *) FUNC2((Expr *) expr, false);

#ifdef OPTIMIZER_DEBUG
		printf("After canonicalize_qual()\n");
		pprint(expr);
#endif
	}

	/* Expand SubLinks to SubPlans */
	if (root->parse->hasSubLinks)
		expr = FUNC0(root, expr, (kind == EXPRKIND_QUAL));

	/*
	 * XXX do not insert anything here unless you have grokked the comments in
	 * SS_replace_correlation_vars ...
	 */

	/* Replace uplevel vars with Param nodes (this IS possible in VALUES) */
	if (root->query_level > 1)
		expr = FUNC1(root, expr);

	/*
	 * If it's a qual or havingQual, convert it to implicit-AND format. (We
	 * don't want to do this before eval_const_expressions, since the latter
	 * would be unable to simplify a top-level AND correctly. Also,
	 * SS_process_sublinks expects explicit-AND format.)
	 */
	if (kind == EXPRKIND_QUAL)
		expr = (Node *) FUNC5((Expr *) expr);

	return expr;
}