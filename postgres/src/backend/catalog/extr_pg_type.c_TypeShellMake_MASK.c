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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_6__ {int /*<<< orphan*/  rd_att; } ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  NameData ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Form_pg_type ;
typedef  scalar_t__ Datum ;

/* Variables and functions */
 int Anum_pg_type_oid ; 
 int Anum_pg_type_typacl ; 
 int Anum_pg_type_typalign ; 
 int Anum_pg_type_typanalyze ; 
 int Anum_pg_type_typarray ; 
 int Anum_pg_type_typbasetype ; 
 int Anum_pg_type_typbyval ; 
 int Anum_pg_type_typcategory ; 
 int Anum_pg_type_typcollation ; 
 int Anum_pg_type_typdefault ; 
 int Anum_pg_type_typdefaultbin ; 
 int Anum_pg_type_typdelim ; 
 int Anum_pg_type_typelem ; 
 int Anum_pg_type_typinput ; 
 int Anum_pg_type_typisdefined ; 
 int Anum_pg_type_typispreferred ; 
 int Anum_pg_type_typlen ; 
 int Anum_pg_type_typmodin ; 
 int Anum_pg_type_typmodout ; 
 int Anum_pg_type_typname ; 
 int Anum_pg_type_typnamespace ; 
 int Anum_pg_type_typndims ; 
 int Anum_pg_type_typnotnull ; 
 int Anum_pg_type_typoutput ; 
 int Anum_pg_type_typowner ; 
 int Anum_pg_type_typreceive ; 
 int Anum_pg_type_typrelid ; 
 int Anum_pg_type_typsend ; 
 int Anum_pg_type_typstorage ; 
 int Anum_pg_type_typtype ; 
 int Anum_pg_type_typtypmod ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char) ; 
 char DEFAULT_TYPDELIM ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_SHELL_IN ; 
 int /*<<< orphan*/  F_SHELL_OUT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ IsBinaryUpgrade ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int Natts_pg_type ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 char TYPCATEGORY_PSEUDOTYPE ; 
 char TYPTYPE_PSEUDO ; 
 int /*<<< orphan*/  TypeOidIndexId ; 
 int /*<<< orphan*/  TypeRelationId ; 
 int /*<<< orphan*/  binary_upgrade_next_pg_type_oid ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC24(const char *typeName, Oid typeNamespace, Oid ownerId)
{
	Relation	pg_type_desc;
	TupleDesc	tupDesc;
	int			i;
	HeapTuple	tup;
	Datum		values[Natts_pg_type];
	bool		nulls[Natts_pg_type];
	Oid			typoid;
	NameData	name;
	ObjectAddress address;

	FUNC0(FUNC15(typeName));

	/*
	 * open pg_type
	 */
	pg_type_desc = FUNC23(TypeRelationId, RowExclusiveLock);
	tupDesc = pg_type_desc->rd_att;

	/*
	 * initialize our *nulls and *values arrays
	 */
	for (i = 0; i < Natts_pg_type; ++i)
	{
		nulls[i] = false;
		values[i] = (Datum) NULL;	/* redundant, but safe */
	}

	/*
	 * initialize *values with the type name and dummy values
	 *
	 * The representational details are the same as int4 ... it doesn't really
	 * matter what they are so long as they are consistent.  Also note that we
	 * give it typtype = TYPTYPE_PSEUDO as extra insurance that it won't be
	 * mistaken for a usable type.
	 */
	FUNC21(&name, typeName);
	values[Anum_pg_type_typname - 1] = FUNC11(&name);
	values[Anum_pg_type_typnamespace - 1] = FUNC13(typeNamespace);
	values[Anum_pg_type_typowner - 1] = FUNC13(ownerId);
	values[Anum_pg_type_typlen - 1] = FUNC7(sizeof(int32));
	values[Anum_pg_type_typbyval - 1] = FUNC1(true);
	values[Anum_pg_type_typtype - 1] = FUNC3(TYPTYPE_PSEUDO);
	values[Anum_pg_type_typcategory - 1] = FUNC3(TYPCATEGORY_PSEUDOTYPE);
	values[Anum_pg_type_typispreferred - 1] = FUNC1(false);
	values[Anum_pg_type_typisdefined - 1] = FUNC1(false);
	values[Anum_pg_type_typdelim - 1] = FUNC3(DEFAULT_TYPDELIM);
	values[Anum_pg_type_typrelid - 1] = FUNC13(InvalidOid);
	values[Anum_pg_type_typelem - 1] = FUNC13(InvalidOid);
	values[Anum_pg_type_typarray - 1] = FUNC13(InvalidOid);
	values[Anum_pg_type_typinput - 1] = FUNC13(F_SHELL_IN);
	values[Anum_pg_type_typoutput - 1] = FUNC13(F_SHELL_OUT);
	values[Anum_pg_type_typreceive - 1] = FUNC13(InvalidOid);
	values[Anum_pg_type_typsend - 1] = FUNC13(InvalidOid);
	values[Anum_pg_type_typmodin - 1] = FUNC13(InvalidOid);
	values[Anum_pg_type_typmodout - 1] = FUNC13(InvalidOid);
	values[Anum_pg_type_typanalyze - 1] = FUNC13(InvalidOid);
	values[Anum_pg_type_typalign - 1] = FUNC3('i');
	values[Anum_pg_type_typstorage - 1] = FUNC3('p');
	values[Anum_pg_type_typnotnull - 1] = FUNC1(false);
	values[Anum_pg_type_typbasetype - 1] = FUNC13(InvalidOid);
	values[Anum_pg_type_typtypmod - 1] = FUNC8(-1);
	values[Anum_pg_type_typndims - 1] = FUNC8(0);
	values[Anum_pg_type_typcollation - 1] = FUNC13(InvalidOid);
	nulls[Anum_pg_type_typdefaultbin - 1] = true;
	nulls[Anum_pg_type_typdefault - 1] = true;
	nulls[Anum_pg_type_typacl - 1] = true;

	/* Use binary-upgrade override for pg_type.oid? */
	if (IsBinaryUpgrade)
	{
		if (!FUNC14(binary_upgrade_next_pg_type_oid))
			FUNC16(ERROR,
					(FUNC17(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC18("pg_type OID value not set when in binary upgrade mode")));

		typoid = binary_upgrade_next_pg_type_oid;
		binary_upgrade_next_pg_type_oid = InvalidOid;
	}
	else
	{
		typoid = FUNC6(pg_type_desc, TypeOidIndexId,
									Anum_pg_type_oid);
	}

	values[Anum_pg_type_oid - 1] = FUNC13(typoid);

	/*
	 * create a new type tuple
	 */
	tup = FUNC19(tupDesc, values, nulls);

	/*
	 * insert the tuple in the relation and get the tuple's oid.
	 */
	FUNC2(pg_type_desc, tup);

	/*
	 * Create dependencies.  We can/must skip this in bootstrap mode.
	 */
	if (!FUNC10())
		FUNC5(typoid,
								 (Form_pg_type) FUNC4(tup),
								 NULL,
								 NULL,
								 0,
								 false,
								 false,
								 false);

	/* Post creation hook for new shell type */
	FUNC9(TypeRelationId, typoid, 0);

	FUNC12(address, TypeRelationId, typoid);

	/*
	 * clean up and return the type-oid
	 */
	FUNC20(tup);
	FUNC22(pg_type_desc, RowExclusiveLock);

	return address;
}