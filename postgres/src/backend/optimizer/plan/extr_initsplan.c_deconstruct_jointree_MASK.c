#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* parse; int /*<<< orphan*/ * nullable_baserels; } ;
struct TYPE_5__ {int /*<<< orphan*/ * jointree; } ;
typedef  int /*<<< orphan*/  Relids ;
typedef  TYPE_2__ PlannerInfo ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FromExpr ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

List *
FUNC3(PlannerInfo *root)
{
	List	   *result;
	Relids		qualscope;
	Relids		inner_join_rels;
	List	   *postponed_qual_list = NIL;

	/* Start recursion at top of jointree */
	FUNC0(root->parse->jointree != NULL &&
		   FUNC1(root->parse->jointree, FromExpr));

	/* this is filled as we scan the jointree */
	root->nullable_baserels = NULL;

	result = FUNC2(root, (Node *) root->parse->jointree, false,
								 &qualscope, &inner_join_rels,
								 &postponed_qual_list);

	/* Shouldn't be any leftover quals */
	FUNC0(postponed_qual_list == NIL);

	return result;
}