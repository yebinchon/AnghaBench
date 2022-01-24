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
typedef  int /*<<< orphan*/  RestrictInfo ;
typedef  int /*<<< orphan*/  Relids ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Index ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  BOOLOID ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

RestrictInfo *
FUNC5(Oid opno,
							Oid collation,
							Expr *item1,
							Expr *item2,
							Relids qualscope,
							Relids nullable_relids,
							Index security_level)
{
	RestrictInfo *restrictinfo;
	Expr	   *clause;

	/*
	 * Build the new clause.  Copy to ensure it shares no substructure with
	 * original (this is necessary in case there are subselects in there...)
	 */
	clause = FUNC3(opno,
						   BOOLOID, /* opresulttype */
						   false,	/* opretset */
						   FUNC2(item1),
						   FUNC2(item2),
						   InvalidOid,
						   collation);

	/*
	 * Build the RestrictInfo node itself.
	 */
	restrictinfo = FUNC4(clause,
									 true,	/* is_pushed_down */
									 false, /* outerjoin_delayed */
									 false, /* pseudoconstant */
									 security_level,	/* security_level */
									 qualscope, /* required_relids */
									 NULL,	/* outer_relids */
									 nullable_relids);	/* nullable_relids */

	/* Set mergejoinability/hashjoinability flags */
	FUNC1(restrictinfo);
	FUNC0(restrictinfo);

	return restrictinfo;
}