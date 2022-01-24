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
struct TYPE_9__ {int /*<<< orphan*/  conname; int /*<<< orphan*/  contypid; int /*<<< orphan*/  conrelid; } ;
struct TYPE_8__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_constraint ;

/* Variables and functions */
 int /*<<< orphan*/  CONSTRAINT_DOMAIN ; 
 int /*<<< orphan*/  CONSTRAINT_RELATION ; 
 int /*<<< orphan*/  CONSTROID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC18(Oid conId, const char *newname)
{
	Relation	conDesc;
	HeapTuple	tuple;
	Form_pg_constraint con;

	conDesc = FUNC17(ConstraintRelationId, RowExclusiveLock);

	tuple = FUNC7(CONSTROID, FUNC5(conId));
	if (!FUNC3(tuple))
		FUNC8(ERROR, "cache lookup failed for constraint %u", conId);
	con = (Form_pg_constraint) FUNC2(tuple);

	/*
	 * For user-friendliness, check whether the name is already in use.
	 */
	if (FUNC6(con->conrelid) &&
		FUNC1(CONSTRAINT_RELATION,
							 con->conrelid,
							 newname))
		FUNC9(ERROR,
				(FUNC10(ERRCODE_DUPLICATE_OBJECT),
				 FUNC11("constraint \"%s\" for relation \"%s\" already exists",
						newname, FUNC13(con->conrelid))));
	if (FUNC6(con->contypid) &&
		FUNC1(CONSTRAINT_DOMAIN,
							 con->contypid,
							 newname))
		FUNC9(ERROR,
				(FUNC10(ERRCODE_DUPLICATE_OBJECT),
				 FUNC11("constraint \"%s\" for domain %s already exists",
						newname, FUNC12(con->contypid))));

	/* OK, do the rename --- tuple is a copy, so OK to scribble on it */
	FUNC15(&(con->conname), newname);

	FUNC0(conDesc, &tuple->t_self, tuple);

	FUNC4(ConstraintRelationId, conId, 0);

	FUNC14(tuple);
	FUNC16(conDesc, RowExclusiveLock);
}