#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; void* classId; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectType ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_COLUMN ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidAttrNumber ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* RelationRelationId ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ObjectAddress
FUNC15(ObjectType objtype, List *object,
							 Relation *relp, LOCKMODE lockmode,
							 bool missing_ok)
{
	ObjectAddress address;
	List	   *relname;
	Oid			reloid;
	Relation	relation;
	const char *attname;
	AttrNumber	attnum;

	/* Extract relation name and open relation. */
	if (FUNC8(object) < 2)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_SYNTAX_ERROR),
				 FUNC4("column name must be qualified")));
	attname = FUNC14(FUNC6(FUNC9(object)));
	relname = FUNC10(FUNC7(object), FUNC8(object) - 1);
	/* XXX no missing_ok support here */
	relation = FUNC13(FUNC11(relname), lockmode);
	reloid = FUNC1(relation);

	/* Look up attribute and construct return value. */
	attnum = FUNC5(reloid, attname);
	if (attnum == InvalidAttrNumber)
	{
		if (!missing_ok)
			FUNC2(ERROR,
					(FUNC3(ERRCODE_UNDEFINED_COLUMN),
					 FUNC4("column \"%s\" of relation \"%s\" does not exist",
							attname, FUNC0(relname))));

		address.classId = RelationRelationId;
		address.objectId = InvalidOid;
		address.objectSubId = InvalidAttrNumber;
		FUNC12(relation, lockmode);
		return address;
	}

	address.classId = RelationRelationId;
	address.objectId = reloid;
	address.objectSubId = attnum;

	*relp = relation;
	return address;
}