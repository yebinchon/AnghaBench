#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_42__   TYPE_9__ ;
typedef  struct TYPE_41__   TYPE_8__ ;
typedef  struct TYPE_40__   TYPE_7__ ;
typedef  struct TYPE_39__   TYPE_5__ ;
typedef  struct TYPE_38__   TYPE_4__ ;
typedef  struct TYPE_37__   TYPE_3__ ;
typedef  struct TYPE_36__   TYPE_2__ ;
typedef  struct TYPE_35__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TypeName ;
typedef  TYPE_2__* Type ;
typedef  TYPE_3__* TupleDesc ;
struct TYPE_42__ {scalar_t__ atttypid; scalar_t__ atttypmod; scalar_t__ attcollation; int /*<<< orphan*/  attname; scalar_t__ attisdropped; } ;
struct TYPE_41__ {void* reloftype; } ;
struct TYPE_40__ {void* oid; } ;
struct TYPE_39__ {scalar_t__ objectSubId; void* objectId; int /*<<< orphan*/  classId; } ;
struct TYPE_38__ {TYPE_1__* rd_rel; } ;
struct TYPE_37__ {int natts; } ;
struct TYPE_36__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_35__ {scalar_t__ reloftype; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_4__* Relation ;
typedef  void* Oid ;
typedef  TYPE_5__ ObjectAddress ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  TYPE_2__* HeapTuple ;
typedef  TYPE_7__* Form_pg_type ;
typedef  TYPE_8__* Form_pg_class ;
typedef  TYPE_9__* Form_pg_attribute ;
typedef  int AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_inherits_inhrelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  InheritsRelationId ; 
 int /*<<< orphan*/  InheritsRelidSeqnoIndexId ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 char const* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  RELOID ; 
 TYPE_3__* FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 void* FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC13 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  TypeRelationId ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (void*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 TYPE_3__* FUNC21 (void*,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_5__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_4__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ObjectAddress
FUNC30(Relation rel, const TypeName *ofTypename, LOCKMODE lockmode)
{
	Oid			relid = FUNC9(rel);
	Type		typetuple;
	Form_pg_type typeform;
	Oid			typeid;
	Relation	inheritsRelation,
				relationRelation;
	SysScanDesc scan;
	ScanKeyData key;
	AttrNumber	table_attno,
				type_attno;
	TupleDesc	typeTupleDesc,
				tableTupleDesc;
	ObjectAddress tableobj,
				typeobj;
	HeapTuple	classtuple;

	/* Validate the type. */
	typetuple = FUNC29(NULL, ofTypename, NULL);
	FUNC14(typetuple);
	typeform = (Form_pg_type) FUNC2(typetuple);
	typeid = typeform->oid;

	/* Fail if the table has any inheritance parents. */
	inheritsRelation = FUNC28(InheritsRelationId, AccessShareLock);
	FUNC11(&key,
				Anum_pg_inherits_inhrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC6(relid));
	scan = FUNC24(inheritsRelation, InheritsRelidSeqnoIndexId,
							  true, NULL, 1, &key);
	if (FUNC3(FUNC26(scan)))
		FUNC17(ERROR,
				(FUNC18(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC19("typed tables cannot inherit")));
	FUNC25(scan);
	FUNC27(inheritsRelation, AccessShareLock);

	/*
	 * Check the tuple descriptors for compatibility.  Unlike inheritance, we
	 * require that the order also match.  However, attnotnull need not match.
	 */
	typeTupleDesc = FUNC21(typeid, -1);
	tableTupleDesc = FUNC7(rel);
	table_attno = 1;
	for (type_attno = 1; type_attno <= typeTupleDesc->natts; type_attno++)
	{
		Form_pg_attribute type_attr,
					table_attr;
		const char *type_attname,
				   *table_attname;

		/* Get the next non-dropped type attribute. */
		type_attr = FUNC13(typeTupleDesc, type_attno - 1);
		if (type_attr->attisdropped)
			continue;
		type_attname = FUNC5(type_attr->attname);

		/* Get the next non-dropped table attribute. */
		do
		{
			if (table_attno > tableTupleDesc->natts)
				FUNC17(ERROR,
						(FUNC18(ERRCODE_DATATYPE_MISMATCH),
						 FUNC19("table is missing column \"%s\"",
								type_attname)));
			table_attr = FUNC13(tableTupleDesc, table_attno - 1);
			table_attno++;
		} while (table_attr->attisdropped);
		table_attname = FUNC5(table_attr->attname);

		/* Compare name. */
		if (FUNC23(table_attname, type_attname, NAMEDATALEN) != 0)
			FUNC17(ERROR,
					(FUNC18(ERRCODE_DATATYPE_MISMATCH),
					 FUNC19("table has column \"%s\" where type requires \"%s\"",
							table_attname, type_attname)));

		/* Compare type. */
		if (table_attr->atttypid != type_attr->atttypid ||
			table_attr->atttypmod != type_attr->atttypmod ||
			table_attr->attcollation != type_attr->attcollation)
			FUNC17(ERROR,
					(FUNC18(ERRCODE_DATATYPE_MISMATCH),
					 FUNC19("table \"%s\" has different type for column \"%s\"",
							FUNC8(rel), type_attname)));
	}
	FUNC1(typeTupleDesc);

	/* Any remaining columns at the end of the table had better be dropped. */
	for (; table_attno <= tableTupleDesc->natts; table_attno++)
	{
		Form_pg_attribute table_attr = FUNC13(tableTupleDesc,
													 table_attno - 1);

		if (!table_attr->attisdropped)
			FUNC17(ERROR,
					(FUNC18(ERRCODE_DATATYPE_MISMATCH),
					 FUNC19("table has extra column \"%s\"",
							FUNC5(table_attr->attname))));
	}

	/* If the table was already typed, drop the existing dependency. */
	if (rel->rd_rel->reloftype)
		FUNC15(relid, TypeRelationId, rel->rd_rel->reloftype,
							   DEPENDENCY_NORMAL);

	/* Record a dependency on the new type. */
	tableobj.classId = RelationRelationId;
	tableobj.objectId = relid;
	tableobj.objectSubId = 0;
	typeobj.classId = TypeRelationId;
	typeobj.objectId = typeid;
	typeobj.objectSubId = 0;
	FUNC22(&tableobj, &typeobj, DEPENDENCY_NORMAL);

	/* Update pg_class.reloftype */
	relationRelation = FUNC28(RelationRelationId, RowExclusiveLock);
	classtuple = FUNC12(RELOID, FUNC6(relid));
	if (!FUNC3(classtuple))
		FUNC16(ERROR, "cache lookup failed for relation %u", relid);
	((Form_pg_class) FUNC2(classtuple))->reloftype = typeid;
	FUNC0(relationRelation, &classtuple->t_self, classtuple);

	FUNC4(RelationRelationId, relid, 0);

	FUNC20(classtuple);
	FUNC27(relationRelation, RowExclusiveLock);

	FUNC10(typetuple);

	return typeobj;
}