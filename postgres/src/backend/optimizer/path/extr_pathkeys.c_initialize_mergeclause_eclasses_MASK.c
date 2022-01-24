#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  inputcollid; int /*<<< orphan*/  opno; } ;
struct TYPE_4__ {int /*<<< orphan*/  mergeopfamilies; int /*<<< orphan*/  nullable_relids; int /*<<< orphan*/ * right_ec; int /*<<< orphan*/ * left_ec; int /*<<< orphan*/ * clause; } ;
typedef  TYPE_1__ RestrictInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  TYPE_2__ OpExpr ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NIL ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC5(PlannerInfo *root, RestrictInfo *restrictinfo)
{
	Expr	   *clause = restrictinfo->clause;
	Oid			lefttype,
				righttype;

	/* Should be a mergeclause ... */
	FUNC0(restrictinfo->mergeopfamilies != NIL);
	/* ... with links not yet set */
	FUNC0(restrictinfo->left_ec == NULL);
	FUNC0(restrictinfo->right_ec == NULL);

	/* Need the declared input types of the operator */
	FUNC4(((OpExpr *) clause)->opno, &lefttype, &righttype);

	/* Find or create a matching EquivalenceClass for each side */
	restrictinfo->left_ec =
		FUNC1(root,
								 (Expr *) FUNC2(clause),
								 restrictinfo->nullable_relids,
								 restrictinfo->mergeopfamilies,
								 lefttype,
								 ((OpExpr *) clause)->inputcollid,
								 0,
								 NULL,
								 true);
	restrictinfo->right_ec =
		FUNC1(root,
								 (Expr *) FUNC3(clause),
								 restrictinfo->nullable_relids,
								 restrictinfo->mergeopfamilies,
								 righttype,
								 ((OpExpr *) clause)->inputcollid,
								 0,
								 NULL,
								 true);
}