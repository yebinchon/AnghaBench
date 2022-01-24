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
struct TYPE_5__ {int /*<<< orphan*/  args; int /*<<< orphan*/  opno; } ;
struct TYPE_4__ {int /*<<< orphan*/  mergeopfamilies; scalar_t__ pseudoconstant; int /*<<< orphan*/ * clause; } ;
typedef  TYPE_1__ RestrictInfo ;
typedef  TYPE_2__ OpExpr ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(RestrictInfo *restrictinfo)
{
	Expr	   *clause = restrictinfo->clause;
	Oid			opno;
	Node	   *leftarg;

	if (restrictinfo->pseudoconstant)
		return;
	if (!FUNC3(clause))
		return;
	if (FUNC5(((OpExpr *) clause)->args) != 2)
		return;

	opno = ((OpExpr *) clause)->opno;
	leftarg = FUNC4(((OpExpr *) clause)->args);

	if (FUNC6(opno, FUNC1(leftarg)) &&
		!FUNC0((Node *) clause))
		restrictinfo->mergeopfamilies = FUNC2(opno);

	/*
	 * Note: op_mergejoinable is just a hint; if we fail to find the operator
	 * in any btree opfamilies, mergeopfamilies remains NIL and so the clause
	 * is not treated as mergejoinable.
	 */
}