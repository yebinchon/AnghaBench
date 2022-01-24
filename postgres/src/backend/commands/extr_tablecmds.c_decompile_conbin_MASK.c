#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_2__ {int /*<<< orphan*/  conrelid; int /*<<< orphan*/  oid; } ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_constraint ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_constraint_conbin ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  pg_get_expr ; 

__attribute__((used)) static char *
FUNC6(HeapTuple contup, TupleDesc tupdesc)
{
	Form_pg_constraint con;
	bool		isnull;
	Datum		attr;
	Datum		expr;

	con = (Form_pg_constraint) FUNC1(contup);
	attr = FUNC5(contup, Anum_pg_constraint_conbin, tupdesc, &isnull);
	if (isnull)
		FUNC4(ERROR, "null conbin for constraint %u", con->oid);

	expr = FUNC0(pg_get_expr, attr,
							   FUNC2(con->conrelid));
	return FUNC3(expr);
}