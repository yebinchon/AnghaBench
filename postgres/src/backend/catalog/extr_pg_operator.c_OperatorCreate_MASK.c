#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  NameData ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__* HeapTuple ;
typedef  scalar_t__ Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
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
 scalar_t__ BOOLOID ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_FUNCTION ; 
 int /*<<< orphan*/  ERRCODE_INVALID_FUNCTION_DEFINITION ; 
 int /*<<< orphan*/  ERRCODE_INVALID_NAME ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 char const* FUNC9 (int /*<<< orphan*/ *) ; 
 int Natts_pg_operator ; 
 int /*<<< orphan*/  OBJECT_OPERATOR ; 
 int /*<<< orphan*/  OPEROID ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (char const*,scalar_t__,scalar_t__,scalar_t__,int*) ; 
 int /*<<< orphan*/  OperatorOidIndexId ; 
 int /*<<< orphan*/  OperatorRelationId ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 scalar_t__ FUNC21 (scalar_t__) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,char const*,scalar_t__,scalar_t__,scalar_t__,int) ; 
 TYPE_1__* FUNC23 (int /*<<< orphan*/ ,scalar_t__*,int*) ; 
 TYPE_1__* FUNC24 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (char const*) ; 

ObjectAddress
FUNC31(const char *operatorName,
			   Oid operatorNamespace,
			   Oid leftTypeId,
			   Oid rightTypeId,
			   Oid procedureId,
			   List *commutatorName,
			   List *negatorName,
			   Oid restrictionId,
			   Oid joinId,
			   bool canMerge,
			   bool canHash)
{
	Relation	pg_operator_desc;
	HeapTuple	tup;
	bool		isUpdate;
	bool		nulls[Natts_pg_operator];
	bool		replaces[Natts_pg_operator];
	Datum		values[Natts_pg_operator];
	Oid			operatorObjectId;
	bool		operatorAlreadyDefined;
	Oid			operResultType;
	Oid			commutatorId,
				negatorId;
	bool		selfCommutator = false;
	NameData	oname;
	int			i;
	ObjectAddress address;

	/*
	 * Sanity checks
	 */
	if (!FUNC30(operatorName))
		FUNC18(ERROR,
				(FUNC19(ERRCODE_INVALID_NAME),
				 FUNC20("\"%s\" is not a valid operator name",
						operatorName)));

	if (!(FUNC11(leftTypeId) && FUNC11(rightTypeId)))
	{
		/* If it's not a binary op, these things mustn't be set: */
		if (commutatorName)
			FUNC18(ERROR,
					(FUNC19(ERRCODE_INVALID_FUNCTION_DEFINITION),
					 FUNC20("only binary operators can have commutators")));
		if (FUNC11(joinId))
			FUNC18(ERROR,
					(FUNC19(ERRCODE_INVALID_FUNCTION_DEFINITION),
					 FUNC20("only binary operators can have join selectivity")));
		if (canMerge)
			FUNC18(ERROR,
					(FUNC19(ERRCODE_INVALID_FUNCTION_DEFINITION),
					 FUNC20("only binary operators can merge join")));
		if (canHash)
			FUNC18(ERROR,
					(FUNC19(ERRCODE_INVALID_FUNCTION_DEFINITION),
					 FUNC20("only binary operators can hash")));
	}

	operResultType = FUNC21(procedureId);

	if (operResultType != BOOLOID)
	{
		/* If it's not a boolean op, these things mustn't be set: */
		if (negatorName)
			FUNC18(ERROR,
					(FUNC19(ERRCODE_INVALID_FUNCTION_DEFINITION),
					 FUNC20("only boolean operators can have negators")));
		if (FUNC11(restrictionId))
			FUNC18(ERROR,
					(FUNC19(ERRCODE_INVALID_FUNCTION_DEFINITION),
					 FUNC20("only boolean operators can have restriction selectivity")));
		if (FUNC11(joinId))
			FUNC18(ERROR,
					(FUNC19(ERRCODE_INVALID_FUNCTION_DEFINITION),
					 FUNC20("only boolean operators can have join selectivity")));
		if (canMerge)
			FUNC18(ERROR,
					(FUNC19(ERRCODE_INVALID_FUNCTION_DEFINITION),
					 FUNC20("only boolean operators can merge join")));
		if (canHash)
			FUNC18(ERROR,
					(FUNC19(ERRCODE_INVALID_FUNCTION_DEFINITION),
					 FUNC20("only boolean operators can hash")));
	}

	operatorObjectId = FUNC12(operatorName,
								   operatorNamespace,
								   leftTypeId,
								   rightTypeId,
								   &operatorAlreadyDefined);

	if (operatorAlreadyDefined)
		FUNC18(ERROR,
				(FUNC19(ERRCODE_DUPLICATE_FUNCTION),
				 FUNC20("operator %s already exists",
						operatorName)));

	/*
	 * At this point, if operatorObjectId is not InvalidOid then we are
	 * filling in a previously-created shell.  Insist that the user own any
	 * such shell.
	 */
	if (FUNC11(operatorObjectId) &&
		!FUNC27(operatorObjectId, FUNC5()))
		FUNC16(ACLCHECK_NOT_OWNER, OBJECT_OPERATOR,
					   operatorName);

	/*
	 * Set up the other operators.  If they do not currently exist, create
	 * shells in order to get ObjectId's.
	 */

	if (commutatorName)
	{
		/* commutator has reversed arg types */
		commutatorId = FUNC22(commutatorName,
										  rightTypeId, leftTypeId,
										  operatorName, operatorNamespace,
										  leftTypeId, rightTypeId,
										  true);

		/* Permission check: must own other operator */
		if (FUNC11(commutatorId) &&
			!FUNC27(commutatorId, FUNC5()))
			FUNC16(ACLCHECK_NOT_OWNER, OBJECT_OPERATOR,
						   FUNC9(commutatorName));

		/*
		 * self-linkage to this operator; will fix below. Note that only
		 * self-linkage for commutation makes sense.
		 */
		if (!FUNC11(commutatorId))
			selfCommutator = true;
	}
	else
		commutatorId = InvalidOid;

	if (negatorName)
	{
		/* negator has same arg types */
		negatorId = FUNC22(negatorName,
									   leftTypeId, rightTypeId,
									   operatorName, operatorNamespace,
									   leftTypeId, rightTypeId,
									   false);

		/* Permission check: must own other operator */
		if (FUNC11(negatorId) &&
			!FUNC27(negatorId, FUNC5()))
			FUNC16(ACLCHECK_NOT_OWNER, OBJECT_OPERATOR,
						   FUNC9(negatorName));
	}
	else
		negatorId = InvalidOid;

	/*
	 * set up values in the operator tuple
	 */

	for (i = 0; i < Natts_pg_operator; ++i)
	{
		values[i] = (Datum) NULL;
		replaces[i] = true;
		nulls[i] = false;
	}

	FUNC26(&oname, operatorName);
	values[Anum_pg_operator_oprname - 1] = FUNC8(&oname);
	values[Anum_pg_operator_oprnamespace - 1] = FUNC10(operatorNamespace);
	values[Anum_pg_operator_oprowner - 1] = FUNC10(FUNC5());
	values[Anum_pg_operator_oprkind - 1] = FUNC3(leftTypeId ? (rightTypeId ? 'b' : 'r') : 'l');
	values[Anum_pg_operator_oprcanmerge - 1] = FUNC0(canMerge);
	values[Anum_pg_operator_oprcanhash - 1] = FUNC0(canHash);
	values[Anum_pg_operator_oprleft - 1] = FUNC10(leftTypeId);
	values[Anum_pg_operator_oprright - 1] = FUNC10(rightTypeId);
	values[Anum_pg_operator_oprresult - 1] = FUNC10(operResultType);
	values[Anum_pg_operator_oprcom - 1] = FUNC10(commutatorId);
	values[Anum_pg_operator_oprnegate - 1] = FUNC10(negatorId);
	values[Anum_pg_operator_oprcode - 1] = FUNC10(procedureId);
	values[Anum_pg_operator_oprrest - 1] = FUNC10(restrictionId);
	values[Anum_pg_operator_oprjoin - 1] = FUNC10(joinId);

	pg_operator_desc = FUNC29(OperatorRelationId, RowExclusiveLock);

	/*
	 * If we are replacing an operator shell, update; else insert
	 */
	if (operatorObjectId)
	{
		isUpdate = true;

		tup = FUNC15(OPEROID,
								  FUNC10(operatorObjectId));
		if (!FUNC6(tup))
			FUNC17(ERROR, "cache lookup failed for operator %u",
				 operatorObjectId);

		replaces[Anum_pg_operator_oid - 1] = false;
		tup = FUNC24(tup,
								FUNC14(pg_operator_desc),
								values,
								nulls,
								replaces);

		FUNC2(pg_operator_desc, &tup->t_self, tup);
	}
	else
	{
		isUpdate = false;

		operatorObjectId = FUNC4(pg_operator_desc,
											  OperatorOidIndexId,
											  Anum_pg_operator_oid);
		values[Anum_pg_operator_oid - 1] = FUNC10(operatorObjectId);

		tup = FUNC23(FUNC14(pg_operator_desc),
							  values, nulls);

		FUNC1(pg_operator_desc, tup);
	}

	/* Add dependencies for the entry */
	address = FUNC25(tup, isUpdate);

	/* Post creation hook for new operator */
	FUNC7(OperatorRelationId, operatorObjectId, 0);

	FUNC28(pg_operator_desc, RowExclusiveLock);

	/*
	 * If a commutator and/or negator link is provided, update the other
	 * operator(s) to point at this one, if they don't already have a link.
	 * This supports an alternative style of operator definition wherein the
	 * user first defines one operator without giving negator or commutator,
	 * then defines the other operator of the pair with the proper commutator
	 * or negator attribute.  That style doesn't require creation of a shell,
	 * and it's the only style that worked right before Postgres version 6.5.
	 * This code also takes care of the situation where the new operator is
	 * its own commutator.
	 */
	if (selfCommutator)
		commutatorId = operatorObjectId;

	if (FUNC11(commutatorId) || FUNC11(negatorId))
		FUNC13(operatorObjectId, commutatorId, negatorId, false);

	return address;
}