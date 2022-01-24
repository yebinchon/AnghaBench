#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Value ;
struct TYPE_14__ {int objectType; int /*<<< orphan*/  newschema; scalar_t__ object; } ;
struct TYPE_13__ {int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ObjectAddress ;
typedef  TYPE_2__ AlterObjectSchemaStmt ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_1__ InvalidObjectAddress ; 
 int /*<<< orphan*/  List ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NamespaceRelationId ; 
#define  OBJECT_AGGREGATE 149 
#define  OBJECT_COLLATION 148 
#define  OBJECT_CONVERSION 147 
#define  OBJECT_DOMAIN 146 
#define  OBJECT_EXTENSION 145 
#define  OBJECT_FOREIGN_TABLE 144 
#define  OBJECT_FUNCTION 143 
#define  OBJECT_MATVIEW 142 
#define  OBJECT_OPCLASS 141 
#define  OBJECT_OPERATOR 140 
#define  OBJECT_OPFAMILY 139 
#define  OBJECT_PROCEDURE 138 
#define  OBJECT_ROUTINE 137 
#define  OBJECT_SEQUENCE 136 
#define  OBJECT_STATISTIC_EXT 135 
#define  OBJECT_TABLE 134 
#define  OBJECT_TSCONFIGURATION 133 
#define  OBJECT_TSDICTIONARY 132 
#define  OBJECT_TSPARSER 131 
#define  OBJECT_TSTEMPLATE 130 
#define  OBJECT_TYPE 129 
#define  OBJECT_VIEW 128 
 int /*<<< orphan*/  FUNC6 (TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__ FUNC9 (int,scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC13(AlterObjectSchemaStmt *stmt,
						  ObjectAddress *oldSchemaAddr)
{
	ObjectAddress address;
	Oid			oldNspOid;

	switch (stmt->objectType)
	{
		case OBJECT_EXTENSION:
			address = FUNC0(FUNC10((Value *) stmt->object), stmt->newschema,
											  oldSchemaAddr ? &oldNspOid : NULL);
			break;

		case OBJECT_FOREIGN_TABLE:
		case OBJECT_SEQUENCE:
		case OBJECT_TABLE:
		case OBJECT_VIEW:
		case OBJECT_MATVIEW:
			address = FUNC2(stmt,
										  oldSchemaAddr ? &oldNspOid : NULL);
			break;

		case OBJECT_DOMAIN:
		case OBJECT_TYPE:
			address = FUNC3(FUNC7(List, stmt->object), stmt->newschema,
										 stmt->objectType,
										 oldSchemaAddr ? &oldNspOid : NULL);
			break;

			/* generic code path */
		case OBJECT_AGGREGATE:
		case OBJECT_COLLATION:
		case OBJECT_CONVERSION:
		case OBJECT_FUNCTION:
		case OBJECT_OPERATOR:
		case OBJECT_OPCLASS:
		case OBJECT_OPFAMILY:
		case OBJECT_PROCEDURE:
		case OBJECT_ROUTINE:
		case OBJECT_STATISTIC_EXT:
		case OBJECT_TSCONFIGURATION:
		case OBJECT_TSDICTIONARY:
		case OBJECT_TSPARSER:
		case OBJECT_TSTEMPLATE:
			{
				Relation	catalog;
				Relation	relation;
				Oid			classId;
				Oid			nspOid;

				address = FUNC9(stmt->objectType,
											 stmt->object,
											 &relation,
											 AccessExclusiveLock,
											 false);
				FUNC4(relation == NULL);
				classId = address.classId;
				catalog = FUNC12(classId, RowExclusiveLock);
				nspOid = FUNC5(stmt->newschema);

				oldNspOid = FUNC1(catalog, address.objectId,
														  nspOid);
				FUNC11(catalog, RowExclusiveLock);
			}
			break;

		default:
			FUNC8(ERROR, "unrecognized AlterObjectSchemaStmt type: %d",
				 (int) stmt->objectType);
			return InvalidObjectAddress;	/* keep compiler happy */
	}

	if (oldSchemaAddr)
		FUNC6(*oldSchemaAddr, NamespaceRelationId, oldNspOid);

	return address;
}