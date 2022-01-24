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
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  FuncExpr ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  BYTEAOID ; 
 int /*<<< orphan*/  COERCE_EXPLICIT_CALL ; 
 int /*<<< orphan*/  INTERNALOID ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(Oid serialfn_oid,
							  Expr **serialfnexpr)
{
	List	   *args;
	FuncExpr   *fexpr;

	/* serialfn always takes INTERNAL and returns BYTEA */
	args = FUNC0(FUNC2(INTERNALOID, InvalidOid));

	fexpr = FUNC1(serialfn_oid,
						 BYTEAOID,
						 args,
						 InvalidOid,
						 InvalidOid,
						 COERCE_EXPLICIT_CALL);
	*serialfnexpr = (Expr *) fexpr;
}