#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_8__ {void* oid; } ;
struct TYPE_7__ {scalar_t__ objectSubId; void* objectId; void* classId; } ;
struct TYPE_6__ {int /*<<< orphan*/ * constr; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  void* Oid ;
typedef  int /*<<< orphan*/  ObjectType ;
typedef  TYPE_2__ ObjectAddress ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_attrdef ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_attrdef_adnum ; 
 int /*<<< orphan*/  Anum_pg_attrdef_adrelid ; 
 int /*<<< orphan*/  AttrDefaultIndexId ; 
 void* AttrDefaultRelationId ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_COLUMN ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_INT2EQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ InvalidAttrNumber ; 
 void* InvalidOid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 scalar_t__ FUNC12 (void*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ObjectAddress
FUNC25(ObjectType objtype, List *object,
						   Relation *relp, LOCKMODE lockmode,
						   bool missing_ok)
{
	ObjectAddress address;
	List	   *relname;
	Oid			reloid;
	Relation	relation;
	const char *attname;
	AttrNumber	attnum;
	TupleDesc	tupdesc;
	Oid			defoid;

	/* Extract relation name and open relation. */
	if (FUNC14(object) < 2)
		FUNC9(ERROR,
				(FUNC10(ERRCODE_SYNTAX_ERROR),
				 FUNC11("column name must be qualified")));
	attname = FUNC21(FUNC16(object));
	relname = FUNC15(FUNC13(object), FUNC14(object) - 1);
	/* XXX no missing_ok support here */
	relation = FUNC20(FUNC17(relname), lockmode);
	reloid = FUNC7(relation);

	tupdesc = FUNC6(relation);

	/* Look up attribute number and scan pg_attrdef to find its tuple */
	attnum = FUNC12(reloid, attname);
	defoid = InvalidOid;
	if (attnum != InvalidAttrNumber && tupdesc->constr != NULL)
	{
		Relation	attrdef;
		ScanKeyData keys[2];
		SysScanDesc scan;
		HeapTuple	tup;

		attrdef = FUNC19(AttrDefaultRelationId, AccessShareLock);
		FUNC8(&keys[0],
					Anum_pg_attrdef_adrelid,
					BTEqualStrategyNumber,
					F_OIDEQ,
					FUNC4(reloid));
		FUNC8(&keys[1],
					Anum_pg_attrdef_adnum,
					BTEqualStrategyNumber,
					F_INT2EQ,
					FUNC2(attnum));
		scan = FUNC22(attrdef, AttrDefaultIndexId, true,
								  NULL, 2, keys);
		if (FUNC1(tup = FUNC24(scan)))
		{
			Form_pg_attrdef atdform = (Form_pg_attrdef) FUNC0(tup);

			defoid = atdform->oid;
		}

		FUNC23(scan);
		FUNC18(attrdef, AccessShareLock);
	}
	if (!FUNC5(defoid))
	{
		if (!missing_ok)
			FUNC9(ERROR,
					(FUNC10(ERRCODE_UNDEFINED_COLUMN),
					 FUNC11("default value for column \"%s\" of relation \"%s\" does not exist",
							attname, FUNC3(relname))));

		address.classId = AttrDefaultRelationId;
		address.objectId = InvalidOid;
		address.objectSubId = InvalidAttrNumber;
		FUNC18(relation, lockmode);
		return address;
	}

	address.classId = AttrDefaultRelationId;
	address.objectId = defoid;
	address.objectSubId = 0;

	*relp = relation;
	return address;
}