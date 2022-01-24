#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int is_valid; int /*<<< orphan*/  node; int /*<<< orphan*/  context; void* invalItems; void* relationOids; void* expr; int /*<<< orphan*/  magic; } ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Expr ;
typedef  TYPE_1__ CachedExpression ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_SMALL_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CACHEDEXPR_MAGIC ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cached_expression_list ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int) ; 

CachedExpression *
FUNC7(Node *expr)
{
	CachedExpression *cexpr;
	List	   *relationOids;
	List	   *invalItems;
	MemoryContext cexpr_context;
	MemoryContext oldcxt;

	/*
	 * Pass the expression through the planner, and collect dependencies.
	 * Everything built here is leaked in the caller's context; that's
	 * intentional to minimize the size of the permanent data structure.
	 */
	expr = (Node *) FUNC5((Expr *) expr,
												 &relationOids,
												 &invalItems);

	/*
	 * Make a private memory context, and copy what we need into that.  To
	 * avoid leaking a long-lived context if we fail while copying data, we
	 * initially make the context under the caller's context.
	 */
	cexpr_context = FUNC0(CurrentMemoryContext,
										  "CachedExpression",
										  ALLOCSET_SMALL_SIZES);

	oldcxt = FUNC2(cexpr_context);

	cexpr = (CachedExpression *) FUNC6(sizeof(CachedExpression));
	cexpr->magic = CACHEDEXPR_MAGIC;
	cexpr->expr = FUNC3(expr);
	cexpr->is_valid = true;
	cexpr->relationOids = FUNC3(relationOids);
	cexpr->invalItems = FUNC3(invalItems);
	cexpr->context = cexpr_context;

	FUNC2(oldcxt);

	/*
	 * Reparent the expr's memory context under CacheMemoryContext so that it
	 * will live indefinitely.
	 */
	FUNC1(cexpr_context, CacheMemoryContext);

	/*
	 * Add the entry to the global list of cached expressions.
	 */
	FUNC4(&cached_expression_list, &cexpr->node);

	return cexpr;
}