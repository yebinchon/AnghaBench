#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  params_list; int /*<<< orphan*/  root; int /*<<< orphan*/  foreignrel; TYPE_2__* scanrel; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ deparse_expr_cxt ;
struct TYPE_9__ {int /*<<< orphan*/  relids; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_2__ RelOptInfo ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BMS_MULTIPLE ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(List *quals, deparse_expr_cxt *context)
{
	StringInfo	buf = context->buf;
	RelOptInfo *scanrel = context->scanrel;

	/* For upper relations, scanrel must be either a joinrel or a baserel */
	FUNC0(!FUNC3(context->foreignrel) ||
		   FUNC1(scanrel) || FUNC2(scanrel));

	/* Construct FROM clause */
	FUNC5(buf, " FROM ");
	FUNC7(buf, context->root, scanrel,
						  (FUNC6(scanrel->relids) == BMS_MULTIPLE),
						  (Index) 0, NULL, context->params_list);

	/* Construct WHERE clause */
	if (quals != NIL)
	{
		FUNC5(buf, " WHERE ");
		FUNC4(quals, context);
	}
}