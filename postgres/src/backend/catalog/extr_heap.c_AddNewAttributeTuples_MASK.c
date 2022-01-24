#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_14__ {int attstattarget; scalar_t__ atttypid; scalar_t__ attcollation; void* attrelid; } ;
struct TYPE_13__ {scalar_t__ objectId; int objectSubId; int /*<<< orphan*/  classId; } ;
struct TYPE_12__ {int natts; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  void* Oid ;
typedef  TYPE_2__ ObjectAddress ;
typedef  TYPE_3__* Form_pg_attribute ;
typedef  TYPE_3__ FormData_pg_attribute ;
typedef  int /*<<< orphan*/  CatalogIndexState ;

/* Variables and functions */
 int /*<<< orphan*/  AttributeRelationId ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CollationRelationId ; 
 scalar_t__ DEFAULT_COLLATION_OID ; 
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 char RELKIND_COMPOSITE_TYPE ; 
 char RELKIND_VIEW ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/ * SysAtt ; 
 TYPE_3__* FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  TypeRelationId ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(Oid new_rel_oid,
					  TupleDesc tupdesc,
					  char relkind)
{
	Form_pg_attribute attr;
	int			i;
	Relation	rel;
	CatalogIndexState indstate;
	int			natts = tupdesc->natts;
	ObjectAddress myself,
				referenced;

	/*
	 * open pg_attribute and its indexes.
	 */
	rel = FUNC9(AttributeRelationId, RowExclusiveLock);

	indstate = FUNC1(rel);

	/*
	 * First we add the user attributes.  This is also a convenient place to
	 * add dependencies on their datatypes and collations.
	 */
	for (i = 0; i < natts; i++)
	{
		attr = FUNC4(tupdesc, i);
		/* Fill in the correct relation OID */
		attr->attrelid = new_rel_oid;
		/* Make sure this is OK, too */
		attr->attstattarget = -1;

		FUNC2(rel, attr, indstate);

		/* Add dependency info */
		myself.classId = RelationRelationId;
		myself.objectId = new_rel_oid;
		myself.objectSubId = i + 1;
		referenced.classId = TypeRelationId;
		referenced.objectId = attr->atttypid;
		referenced.objectSubId = 0;
		FUNC7(&myself, &referenced, DEPENDENCY_NORMAL);

		/* The default collation is pinned, so don't bother recording it */
		if (FUNC3(attr->attcollation) &&
			attr->attcollation != DEFAULT_COLLATION_OID)
		{
			referenced.classId = CollationRelationId;
			referenced.objectId = attr->attcollation;
			referenced.objectSubId = 0;
			FUNC7(&myself, &referenced, DEPENDENCY_NORMAL);
		}
	}

	/*
	 * Next we add the system attributes.  Skip OID if rel has no OIDs. Skip
	 * all for a view or type relation.  We don't bother with making datatype
	 * dependencies here, since presumably all these types are pinned.
	 */
	if (relkind != RELKIND_VIEW && relkind != RELKIND_COMPOSITE_TYPE)
	{
		for (i = 0; i < (int) FUNC5(SysAtt); i++)
		{
			FormData_pg_attribute attStruct;

			FUNC6(&attStruct, SysAtt[i], sizeof(FormData_pg_attribute));

			/* Fill in the correct relation OID in the copied tuple */
			attStruct.attrelid = new_rel_oid;

			FUNC2(rel, &attStruct, indstate);
		}
	}

	/*
	 * clean up
	 */
	FUNC0(indstate);

	FUNC8(rel, RowExclusiveLock);
}