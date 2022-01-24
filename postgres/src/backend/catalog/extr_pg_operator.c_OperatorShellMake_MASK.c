#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_6__ {int /*<<< orphan*/  rd_att; } ;
typedef  TYPE_1__* Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  NameData ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  scalar_t__ Datum ;

/* Variables and functions */
 int Anum_pg_operator_oid ; 
 int Anum_pg_operator_oprcanhash ; 
 int Anum_pg_operator_oprcanmerge ; 
 int Anum_pg_operator_oprcode ; 
 int Anum_pg_operator_oprcom ; 
 int Anum_pg_operator_oprjoin ; 
 int Anum_pg_operator_oprkind ; 
 int Anum_pg_operator_oprleft ; 
 int Anum_pg_operator_oprname ; 
 int Anum_pg_operator_oprnamespace ; 
 int Anum_pg_operator_oprnegate ; 
 int Anum_pg_operator_oprowner ; 
 int Anum_pg_operator_oprrest ; 
 int Anum_pg_operator_oprresult ; 
 int Anum_pg_operator_oprright ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ERRCODE_INVALID_NAME ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int Natts_pg_operator ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  OperatorOidIndexId ; 
 int /*<<< orphan*/  OperatorRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char const*) ; 

__attribute__((used)) static Oid
FUNC19(const char *operatorName,
				  Oid operatorNamespace,
				  Oid leftTypeId,
				  Oid rightTypeId)
{
	Relation	pg_operator_desc;
	Oid			operatorObjectId;
	int			i;
	HeapTuple	tup;
	Datum		values[Natts_pg_operator];
	bool		nulls[Natts_pg_operator];
	NameData	oname;
	TupleDesc	tupDesc;

	/*
	 * validate operator name
	 */
	if (!FUNC18(operatorName))
		FUNC9(ERROR,
				(FUNC10(ERRCODE_INVALID_NAME),
				 FUNC11("\"%s\" is not a valid operator name",
						operatorName)));

	/*
	 * open pg_operator
	 */
	pg_operator_desc = FUNC17(OperatorRelationId, RowExclusiveLock);
	tupDesc = pg_operator_desc->rd_att;

	/*
	 * initialize our *nulls and *values arrays
	 */
	for (i = 0; i < Natts_pg_operator; ++i)
	{
		nulls[i] = false;
		values[i] = (Datum) NULL;	/* redundant, but safe */
	}

	/*
	 * initialize values[] with the operator name and input data types. Note
	 * that oprcode is set to InvalidOid, indicating it's a shell.
	 */
	operatorObjectId = FUNC4(pg_operator_desc, OperatorOidIndexId,
										  Anum_pg_operator_oid);
	values[Anum_pg_operator_oid - 1] = FUNC8(operatorObjectId);
	FUNC15(&oname, operatorName);
	values[Anum_pg_operator_oprname - 1] = FUNC7(&oname);
	values[Anum_pg_operator_oprnamespace - 1] = FUNC8(operatorNamespace);
	values[Anum_pg_operator_oprowner - 1] = FUNC8(FUNC5());
	values[Anum_pg_operator_oprkind - 1] = FUNC2(leftTypeId ? (rightTypeId ? 'b' : 'r') : 'l');
	values[Anum_pg_operator_oprcanmerge - 1] = FUNC0(false);
	values[Anum_pg_operator_oprcanhash - 1] = FUNC0(false);
	values[Anum_pg_operator_oprleft - 1] = FUNC8(leftTypeId);
	values[Anum_pg_operator_oprright - 1] = FUNC8(rightTypeId);
	values[Anum_pg_operator_oprresult - 1] = FUNC8(InvalidOid);
	values[Anum_pg_operator_oprcom - 1] = FUNC8(InvalidOid);
	values[Anum_pg_operator_oprnegate - 1] = FUNC8(InvalidOid);
	values[Anum_pg_operator_oprcode - 1] = FUNC8(InvalidOid);
	values[Anum_pg_operator_oprrest - 1] = FUNC8(InvalidOid);
	values[Anum_pg_operator_oprjoin - 1] = FUNC8(InvalidOid);

	/*
	 * create a new operator tuple
	 */
	tup = FUNC12(tupDesc, values, nulls);

	/*
	 * insert our "shell" operator tuple
	 */
	FUNC1(pg_operator_desc, tup);

	/* Add dependencies for the entry */
	FUNC14(tup, false);

	FUNC13(tup);

	/* Post creation hook for new shell operator */
	FUNC6(OperatorRelationId, operatorObjectId, 0);

	/*
	 * Make sure the tuple is visible for subsequent lookups/updates.
	 */
	FUNC3();

	/*
	 * close the operator relation and return the oid.
	 */
	FUNC16(pg_operator_desc, RowExclusiveLock);

	return operatorObjectId;
}