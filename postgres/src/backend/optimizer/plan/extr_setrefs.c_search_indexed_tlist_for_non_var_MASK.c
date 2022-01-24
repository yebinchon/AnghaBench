#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  tlist; } ;
typedef  TYPE_1__ indexed_tlist ;
struct TYPE_7__ {scalar_t__ varoattno; scalar_t__ varnoold; } ;
typedef  TYPE_2__ Var ;
typedef  int /*<<< orphan*/  TargetEntry ;
typedef  int /*<<< orphan*/  Index ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  Const ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Var *
FUNC3(Expr *node,
								 indexed_tlist *itlist, Index newvarno)
{
	TargetEntry *tle;

	/*
	 * If it's a simple Const, replacing it with a Var is silly, even if there
	 * happens to be an identical Const below; a Var is more expensive to
	 * execute than a Const.  What's more, replacing it could confuse some
	 * places in the executor that expect to see simple Consts for, eg,
	 * dropped columns.
	 */
	if (FUNC0(node, Const))
		return NULL;

	tle = FUNC2(node, itlist->tlist);
	if (tle)
	{
		/* Found a matching subplan output expression */
		Var		   *newvar;

		newvar = FUNC1(newvarno, tle);
		newvar->varnoold = 0;	/* wasn't ever a plain Var */
		newvar->varoattno = 0;
		return newvar;
	}
	return NULL;				/* no match */
}