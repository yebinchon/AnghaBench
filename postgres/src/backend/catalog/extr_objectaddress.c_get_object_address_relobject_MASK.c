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
struct TYPE_3__ {void* objectId; int /*<<< orphan*/  objectSubId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  void* Oid ;
typedef  int ObjectType ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 void* InvalidOid ; 
#define  OBJECT_POLICY 131 
#define  OBJECT_RULE 130 
#define  OBJECT_TABCONSTRAINT 129 
#define  OBJECT_TRIGGER 128 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  PolicyRelationId ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RewriteRelationId ; 
 int /*<<< orphan*/  TriggerRelationId ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 void* FUNC6 (void*,char const*,int) ; 
 void* FUNC7 (void*,char const*,int) ; 
 void* FUNC8 (void*,char const*,int) ; 
 void* FUNC9 (void*,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ObjectAddress
FUNC18(ObjectType objtype, List *object,
							 Relation *relp, bool missing_ok)
{
	ObjectAddress address;
	Relation	relation = NULL;
	int			nnames;
	const char *depname;
	List	   *relname;
	Oid			reloid;

	/* Extract name of dependent object. */
	depname = FUNC15(FUNC13(object));

	/* Separate relation name from dependent object name. */
	nnames = FUNC11(object);
	if (nnames < 2)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_SYNTAX_ERROR),
				 FUNC5("must specify relation and object name")));

	/* Extract relation name and open relation. */
	relname = FUNC12(FUNC10(object), nnames - 1);
	relation = FUNC17(FUNC14(relname),
									 AccessShareLock,
									 missing_ok);

	reloid = relation ? FUNC1(relation) : InvalidOid;

	switch (objtype)
	{
		case OBJECT_RULE:
			address.classId = RewriteRelationId;
			address.objectId = relation ?
				FUNC8(reloid, depname, missing_ok) : InvalidOid;
			address.objectSubId = 0;
			break;
		case OBJECT_TRIGGER:
			address.classId = TriggerRelationId;
			address.objectId = relation ?
				FUNC9(reloid, depname, missing_ok) : InvalidOid;
			address.objectSubId = 0;
			break;
		case OBJECT_TABCONSTRAINT:
			address.classId = ConstraintRelationId;
			address.objectId = relation ?
				FUNC6(reloid, depname, missing_ok) :
				InvalidOid;
			address.objectSubId = 0;
			break;
		case OBJECT_POLICY:
			address.classId = PolicyRelationId;
			address.objectId = relation ?
				FUNC7(reloid, depname, missing_ok) :
				InvalidOid;
			address.objectSubId = 0;
			break;
		default:
			FUNC2(ERROR, "unrecognized objtype: %d", (int) objtype);
	}

	/* Avoid relcache leak when object not found. */
	if (!FUNC0(address.objectId))
	{
		if (relation != NULL)
			FUNC16(relation, AccessShareLock);

		relation = NULL;		/* department of accident prevention */
		return address;
	}

	/* Done. */
	*relp = relation;
	return address;
}