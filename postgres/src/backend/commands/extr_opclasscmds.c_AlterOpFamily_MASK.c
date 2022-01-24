#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  items; scalar_t__ isDrop; int /*<<< orphan*/  opfamilyname; int /*<<< orphan*/  amname; } ;
struct TYPE_9__ {int /*<<< orphan*/  oid; } ;
struct TYPE_8__ {int amstrategies; int amsupport; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ IndexAmRoutine ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_am ;
typedef  TYPE_3__ AlterOpFamilyStmt ;

/* Variables and functions */
 int /*<<< orphan*/  AMNAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int SHRT_MAX ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 

Oid
FUNC13(AlterOpFamilyStmt *stmt)
{
	Oid			amoid,			/* our AM's oid */
				opfamilyoid;	/* oid of opfamily */
	int			maxOpNumber,	/* amstrategies value */
				maxProcNumber;	/* amsupport value */
	HeapTuple	tup;
	Form_pg_am	amform;
	IndexAmRoutine *amroutine;

	/* Get necessary info about access method */
	tup = FUNC7(AMNAME, FUNC2(stmt->amname));
	if (!FUNC5(tup))
		FUNC8(ERROR,
				(FUNC9(ERRCODE_UNDEFINED_OBJECT),
				 FUNC10("access method \"%s\" does not exist",
						stmt->amname)));

	amform = (Form_pg_am) FUNC3(tup);
	amoid = amform->oid;
	amroutine = FUNC4(amoid, false);
	FUNC6(tup);

	maxOpNumber = amroutine->amstrategies;
	/* if amstrategies is zero, just enforce that op numbers fit in int16 */
	if (maxOpNumber <= 0)
		maxOpNumber = SHRT_MAX;
	maxProcNumber = amroutine->amsupport;

	/* XXX Should we make any privilege check against the AM? */

	/* Look up the opfamily */
	opfamilyoid = FUNC11(amoid, stmt->opfamilyname, false);

	/*
	 * Currently, we require superuser privileges to alter an opfamily.
	 *
	 * XXX re-enable NOT_USED code sections below if you remove this test.
	 */
	if (!FUNC12())
		FUNC8(ERROR,
				(FUNC9(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC10("must be superuser to alter an operator family")));

	/*
	 * ADD and DROP cases need separate code from here on down.
	 */
	if (stmt->isDrop)
		FUNC1(stmt, amoid, opfamilyoid,
						  maxOpNumber, maxProcNumber, stmt->items);
	else
		FUNC0(stmt, amoid, opfamilyoid,
						 maxOpNumber, maxProcNumber, stmt->items);

	return opfamilyoid;
}