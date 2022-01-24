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
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_14__ {scalar_t__ objectSubId; void* objectId; void* classId; } ;
struct TYPE_13__ {TYPE_1__* rd_rel; } ;
struct TYPE_12__ {scalar_t__ relkind; scalar_t__ relowner; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  RangeVar ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_3__ ObjectAddress ;
typedef  int /*<<< orphan*/  List ;
typedef  scalar_t__ DependencyType ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DEPENDENCY_AUTO ; 
 scalar_t__ DEPENDENCY_INTERNAL ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_COLUMN ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidAttrNumber ; 
 int /*<<< orphan*/  NoLock ; 
 scalar_t__ RELKIND_FOREIGN_TABLE ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 scalar_t__ RELKIND_RELATION ; 
 scalar_t__ RELKIND_VIEW ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 void* FUNC3 (TYPE_2__*) ; 
 void* RelationRelationId ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 scalar_t__ FUNC10 (void*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (void*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (char*,char*) ; 

__attribute__((used)) static void
FUNC25(Relation seqrel, List *owned_by, bool for_identity)
{
	DependencyType deptype;
	int			nnames;
	Relation	tablerel;
	AttrNumber	attnum;

	deptype = for_identity ? DEPENDENCY_INTERNAL : DEPENDENCY_AUTO;

	nnames = FUNC15(owned_by);
	FUNC0(nnames > 0);
	if (nnames == 1)
	{
		/* Must be OWNED BY NONE */
		if (FUNC24(FUNC23(FUNC13(owned_by)), "none") != 0)
			FUNC5(ERROR,
					(FUNC6(ERRCODE_SYNTAX_ERROR),
					 FUNC9("invalid OWNED BY option"),
					 FUNC8("Specify OWNED BY table.column or OWNED BY NONE.")));
		tablerel = NULL;
		attnum = 0;
	}
	else
	{
		List	   *relname;
		char	   *attrname;
		RangeVar   *rel;

		/* Separate relname and attr name */
		relname = FUNC17(FUNC14(owned_by), nnames - 1);
		attrname = FUNC23(FUNC12(FUNC16(owned_by)));

		/* Open and lock rel to ensure it won't go away meanwhile */
		rel = FUNC18(relname);
		tablerel = FUNC21(rel, AccessShareLock);

		/* Must be a regular or foreign table */
		if (!(tablerel->rd_rel->relkind == RELKIND_RELATION ||
			  tablerel->rd_rel->relkind == RELKIND_FOREIGN_TABLE ||
			  tablerel->rd_rel->relkind == RELKIND_VIEW ||
			  tablerel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE))
			FUNC5(ERROR,
					(FUNC6(ERRCODE_WRONG_OBJECT_TYPE),
					 FUNC9("referenced relation \"%s\" is not a table or foreign table",
							FUNC2(tablerel))));

		/* We insist on same owner and schema */
		if (seqrel->rd_rel->relowner != tablerel->rd_rel->relowner)
			FUNC5(ERROR,
					(FUNC6(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
					 FUNC9("sequence must have same owner as table it is linked to")));
		if (FUNC1(seqrel) != FUNC1(tablerel))
			FUNC5(ERROR,
					(FUNC6(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
					 FUNC9("sequence must be in same schema as table it is linked to")));

		/* Now, fetch the attribute number from the system cache */
		attnum = FUNC10(FUNC3(tablerel), attrname);
		if (attnum == InvalidAttrNumber)
			FUNC5(ERROR,
					(FUNC6(ERRCODE_UNDEFINED_COLUMN),
					 FUNC9("column \"%s\" of relation \"%s\" does not exist",
							attrname, FUNC2(tablerel))));
	}

	/*
	 * Catch user explicitly running OWNED BY on identity sequence.
	 */
	if (deptype == DEPENDENCY_AUTO)
	{
		Oid			tableId;
		int32		colId;

		if (FUNC22(FUNC3(seqrel), DEPENDENCY_INTERNAL, &tableId, &colId))
			FUNC5(ERROR,
					(FUNC6(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC9("cannot change ownership of identity sequence"),
					 FUNC7("Sequence \"%s\" is linked to table \"%s\".",
							   FUNC2(seqrel),
							   FUNC11(tableId))));
	}

	/*
	 * OK, we are ready to update pg_depend.  First remove any existing
	 * dependencies for the sequence, then optionally add a new one.
	 */
	FUNC4(RelationRelationId, FUNC3(seqrel),
									RelationRelationId, deptype);

	if (tablerel)
	{
		ObjectAddress refobject,
					depobject;

		refobject.classId = RelationRelationId;
		refobject.objectId = FUNC3(tablerel);
		refobject.objectSubId = attnum;
		depobject.classId = RelationRelationId;
		depobject.objectId = FUNC3(seqrel);
		depobject.objectSubId = 0;
		FUNC19(&depobject, &refobject, deptype);
	}

	/* Done, but hold lock until commit */
	if (tablerel)
		FUNC20(tablerel, NoLock);
}