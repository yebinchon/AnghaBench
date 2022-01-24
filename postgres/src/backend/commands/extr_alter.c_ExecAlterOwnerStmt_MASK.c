#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Value ;
struct TYPE_16__ {int objectType; scalar_t__ object; int /*<<< orphan*/  newowner; } ;
struct TYPE_15__ {int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ObjectAddress ;
typedef  TYPE_2__ AlterOwnerStmt ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_1__ InvalidObjectAddress ; 
 int /*<<< orphan*/  LargeObjectMetadataRelationId ; 
 int /*<<< orphan*/  LargeObjectRelationId ; 
 int /*<<< orphan*/  List ; 
#define  OBJECT_AGGREGATE 151 
#define  OBJECT_COLLATION 150 
#define  OBJECT_CONVERSION 149 
#define  OBJECT_DATABASE 148 
#define  OBJECT_DOMAIN 147 
#define  OBJECT_EVENT_TRIGGER 146 
#define  OBJECT_FDW 145 
#define  OBJECT_FOREIGN_SERVER 144 
#define  OBJECT_FUNCTION 143 
#define  OBJECT_LANGUAGE 142 
#define  OBJECT_LARGEOBJECT 141 
#define  OBJECT_OPCLASS 140 
#define  OBJECT_OPERATOR 139 
#define  OBJECT_OPFAMILY 138 
#define  OBJECT_PROCEDURE 137 
#define  OBJECT_PUBLICATION 136 
#define  OBJECT_ROUTINE 135 
#define  OBJECT_SCHEMA 134 
#define  OBJECT_STATISTIC_EXT 133 
#define  OBJECT_SUBSCRIPTION 132 
#define  OBJECT_TABLESPACE 131 
#define  OBJECT_TSCONFIGURATION 130 
#define  OBJECT_TSDICTIONARY 129 
#define  OBJECT_TYPE 128 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__ FUNC12 (int,scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC17(AlterOwnerStmt *stmt)
{
	Oid			newowner = FUNC13(stmt->newowner, false);

	switch (stmt->objectType)
	{
		case OBJECT_DATABASE:
			return FUNC0(FUNC14((Value *) stmt->object), newowner);

		case OBJECT_SCHEMA:
			return FUNC6(FUNC14((Value *) stmt->object), newowner);

		case OBJECT_TYPE:
		case OBJECT_DOMAIN:		/* same as TYPE */
			return FUNC8(FUNC10(List, stmt->object), newowner, stmt->objectType);
			break;

		case OBJECT_FDW:
			return FUNC2(FUNC14((Value *) stmt->object),
												newowner);

		case OBJECT_FOREIGN_SERVER:
			return FUNC3(FUNC14((Value *) stmt->object),
										   newowner);

		case OBJECT_EVENT_TRIGGER:
			return FUNC1(FUNC14((Value *) stmt->object),
										  newowner);

		case OBJECT_PUBLICATION:
			return FUNC5(FUNC14((Value *) stmt->object),
										 newowner);

		case OBJECT_SUBSCRIPTION:
			return FUNC7(FUNC14((Value *) stmt->object),
										  newowner);

			/* Generic cases */
		case OBJECT_AGGREGATE:
		case OBJECT_COLLATION:
		case OBJECT_CONVERSION:
		case OBJECT_FUNCTION:
		case OBJECT_LANGUAGE:
		case OBJECT_LARGEOBJECT:
		case OBJECT_OPERATOR:
		case OBJECT_OPCLASS:
		case OBJECT_OPFAMILY:
		case OBJECT_PROCEDURE:
		case OBJECT_ROUTINE:
		case OBJECT_STATISTIC_EXT:
		case OBJECT_TABLESPACE:
		case OBJECT_TSDICTIONARY:
		case OBJECT_TSCONFIGURATION:
			{
				Relation	catalog;
				Relation	relation;
				Oid			classId;
				ObjectAddress address;

				address = FUNC12(stmt->objectType,
											 stmt->object,
											 &relation,
											 AccessExclusiveLock,
											 false);
				FUNC9(relation == NULL);
				classId = address.classId;

				/*
				 * XXX - get_object_address returns Oid of pg_largeobject
				 * catalog for OBJECT_LARGEOBJECT because of historical
				 * reasons.  Fix up it here.
				 */
				if (classId == LargeObjectRelationId)
					classId = LargeObjectMetadataRelationId;

				catalog = FUNC16(classId, RowExclusiveLock);

				FUNC4(catalog, address.objectId, newowner);
				FUNC15(catalog, RowExclusiveLock);

				return address;
			}
			break;

		default:
			FUNC11(ERROR, "unrecognized AlterOwnerStmt type: %d",
				 (int) stmt->objectType);
			return InvalidObjectAddress;	/* keep compiler happy */
	}
}