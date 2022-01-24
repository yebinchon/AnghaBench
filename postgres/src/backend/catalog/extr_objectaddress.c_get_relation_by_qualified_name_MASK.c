#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  objectId; scalar_t__ objectSubId; int /*<<< orphan*/  classId; } ;
struct TYPE_10__ {TYPE_1__* rd_rel; } ;
struct TYPE_9__ {int /*<<< orphan*/  relkind; } ;
typedef  TYPE_2__* Relation ;
typedef  int ObjectType ;
typedef  TYPE_3__ ObjectAddress ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  LOCKMODE ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidOid ; 
#define  OBJECT_FOREIGN_TABLE 133 
#define  OBJECT_INDEX 132 
#define  OBJECT_MATVIEW 131 
#define  OBJECT_SEQUENCE 130 
#define  OBJECT_TABLE 129 
#define  OBJECT_VIEW 128 
 int /*<<< orphan*/  RELKIND_FOREIGN_TABLE ; 
 int /*<<< orphan*/  RELKIND_INDEX ; 
 int /*<<< orphan*/  RELKIND_MATVIEW ; 
 int /*<<< orphan*/  RELKIND_PARTITIONED_INDEX ; 
 int /*<<< orphan*/  RELKIND_PARTITIONED_TABLE ; 
 int /*<<< orphan*/  RELKIND_RELATION ; 
 int /*<<< orphan*/  RELKIND_SEQUENCE ; 
 int /*<<< orphan*/  RELKIND_VIEW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ObjectAddress
FUNC8(ObjectType objtype, List *object,
							   Relation *relp, LOCKMODE lockmode,
							   bool missing_ok)
{
	Relation	relation;
	ObjectAddress address;

	address.classId = RelationRelationId;
	address.objectId = InvalidOid;
	address.objectSubId = 0;

	relation = FUNC7(FUNC6(object),
										lockmode, missing_ok);
	if (!relation)
		return address;

	switch (objtype)
	{
		case OBJECT_INDEX:
			if (relation->rd_rel->relkind != RELKIND_INDEX &&
				relation->rd_rel->relkind != RELKIND_PARTITIONED_INDEX)
				FUNC3(ERROR,
						(FUNC4(ERRCODE_WRONG_OBJECT_TYPE),
						 FUNC5("\"%s\" is not an index",
								FUNC0(relation))));
			break;
		case OBJECT_SEQUENCE:
			if (relation->rd_rel->relkind != RELKIND_SEQUENCE)
				FUNC3(ERROR,
						(FUNC4(ERRCODE_WRONG_OBJECT_TYPE),
						 FUNC5("\"%s\" is not a sequence",
								FUNC0(relation))));
			break;
		case OBJECT_TABLE:
			if (relation->rd_rel->relkind != RELKIND_RELATION &&
				relation->rd_rel->relkind != RELKIND_PARTITIONED_TABLE)
				FUNC3(ERROR,
						(FUNC4(ERRCODE_WRONG_OBJECT_TYPE),
						 FUNC5("\"%s\" is not a table",
								FUNC0(relation))));
			break;
		case OBJECT_VIEW:
			if (relation->rd_rel->relkind != RELKIND_VIEW)
				FUNC3(ERROR,
						(FUNC4(ERRCODE_WRONG_OBJECT_TYPE),
						 FUNC5("\"%s\" is not a view",
								FUNC0(relation))));
			break;
		case OBJECT_MATVIEW:
			if (relation->rd_rel->relkind != RELKIND_MATVIEW)
				FUNC3(ERROR,
						(FUNC4(ERRCODE_WRONG_OBJECT_TYPE),
						 FUNC5("\"%s\" is not a materialized view",
								FUNC0(relation))));
			break;
		case OBJECT_FOREIGN_TABLE:
			if (relation->rd_rel->relkind != RELKIND_FOREIGN_TABLE)
				FUNC3(ERROR,
						(FUNC4(ERRCODE_WRONG_OBJECT_TYPE),
						 FUNC5("\"%s\" is not a foreign table",
								FUNC0(relation))));
			break;
		default:
			FUNC2(ERROR, "unrecognized objtype: %d", (int) objtype);
			break;
	}

	/* Done. */
	address.objectId = FUNC1(relation);
	*relp = relation;

	return address;
}