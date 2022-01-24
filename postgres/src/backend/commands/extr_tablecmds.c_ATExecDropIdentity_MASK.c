#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ attnum; char attidentity; } ;
struct TYPE_14__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_13__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  TYPE_2__* HeapTuple ;
typedef  TYPE_3__* Form_pg_attribute ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  AttributeRelationId ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  DEPENDENCY_INTERNAL ; 
 int /*<<< orphan*/  DROP_RESTRICT ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_COLUMN ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_1__ InvalidObjectAddress ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  PERFORM_DELETION_INTERNAL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ObjectAddress
FUNC18(Relation rel, const char *colName, bool missing_ok, LOCKMODE lockmode)
{
	HeapTuple	tuple;
	Form_pg_attribute attTup;
	AttrNumber	attnum;
	Relation	attrelation;
	ObjectAddress address;
	Oid			seqid;
	ObjectAddress seqaddress;

	attrelation = FUNC17(AttributeRelationId, RowExclusiveLock);
	tuple = FUNC8(FUNC7(rel), colName);
	if (!FUNC3(tuple))
		FUNC10(ERROR,
				(FUNC11(ERRCODE_UNDEFINED_COLUMN),
				 FUNC12("column \"%s\" of relation \"%s\" does not exist",
						colName, FUNC6(rel))));

	attTup = (Form_pg_attribute) FUNC2(tuple);
	attnum = attTup->attnum;

	if (attnum <= 0)
		FUNC10(ERROR,
				(FUNC11(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC12("cannot alter system column \"%s\"",
						colName)));

	if (!attTup->attidentity)
	{
		if (!missing_ok)
			FUNC10(ERROR,
					(FUNC11(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
					 FUNC12("column \"%s\" of relation \"%s\" is not an identity column",
							colName, FUNC6(rel))));
		else
		{
			FUNC10(NOTICE,
					(FUNC12("column \"%s\" of relation \"%s\" is not an identity column, skipping",
							colName, FUNC6(rel))));
			FUNC14(tuple);
			FUNC16(attrelation, RowExclusiveLock);
			return InvalidObjectAddress;
		}
	}

	attTup->attidentity = '\0';
	FUNC0(attrelation, &tuple->t_self, tuple);

	FUNC4(RelationRelationId,
							  FUNC7(rel),
							  attTup->attnum);
	FUNC5(address, RelationRelationId,
						FUNC7(rel), attnum);
	FUNC14(tuple);

	FUNC16(attrelation, RowExclusiveLock);

	/* drop the internal sequence */
	seqid = FUNC13(FUNC7(rel), attnum, false);
	FUNC9(RelationRelationId, seqid,
									RelationRelationId, DEPENDENCY_INTERNAL);
	FUNC1();
	seqaddress.classId = RelationRelationId;
	seqaddress.objectId = seqid;
	seqaddress.objectSubId = 0;
	FUNC15(&seqaddress, DROP_RESTRICT, PERFORM_DELETION_INTERNAL);

	return address;
}