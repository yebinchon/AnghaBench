#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  deparse_cxt; } ;
typedef  int /*<<< orphan*/  PlanState ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ ExplainState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*,TYPE_1__*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(Node *node, const char *qlabel,
				PlanState *planstate, List *ancestors,
				bool useprefix, ExplainState *es)
{
	List	   *context;
	char	   *exprstr;

	/* Set up deparsing context */
	context = FUNC2(es->deparse_cxt,
											(Node *) planstate,
											ancestors);

	/* Deparse the expression */
	exprstr = FUNC1(node, context, useprefix, false);

	/* And add to es->str */
	FUNC0(qlabel, exprstr, es);
}