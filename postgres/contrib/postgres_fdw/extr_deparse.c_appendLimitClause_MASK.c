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
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  buf; TYPE_3__* root; } ;
typedef  TYPE_2__ deparse_expr_cxt ;
struct TYPE_8__ {TYPE_1__* parse; } ;
struct TYPE_6__ {scalar_t__ limitOffset; scalar_t__ limitCount; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_3__ PlannerInfo ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 

__attribute__((used)) static void
FUNC4(deparse_expr_cxt *context)
{
	PlannerInfo *root = context->root;
	StringInfo	buf = context->buf;
	int			nestlevel;

	/* Make sure any constants in the exprs are printed portably */
	nestlevel = FUNC3();

	if (root->parse->limitCount)
	{
		FUNC0(buf, " LIMIT ");
		FUNC1((Expr *) root->parse->limitCount, context);
	}
	if (root->parse->limitOffset)
	{
		FUNC0(buf, " OFFSET ");
		FUNC1((Expr *) root->parse->limitOffset, context);
	}

	FUNC2(nestlevel);
}