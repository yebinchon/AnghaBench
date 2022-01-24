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
typedef  int /*<<< orphan*/  TypeName ;
struct TYPE_3__ {int /*<<< orphan*/  skipIfNewValExists; int /*<<< orphan*/  newValIsAfter; int /*<<< orphan*/  newValNeighbor; int /*<<< orphan*/  newVal; int /*<<< orphan*/  oldVal; int /*<<< orphan*/  typeName; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__ AlterEnumStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPEOID ; 
 int /*<<< orphan*/  TypeRelationId ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

ObjectAddress
FUNC12(AlterEnumStmt *stmt)
{
	Oid			enum_type_oid;
	TypeName   *typename;
	HeapTuple	tup;
	ObjectAddress address;

	/* Make a TypeName so we can use standard type lookup machinery */
	typename = FUNC10(stmt->typeName);
	enum_type_oid = FUNC11(NULL, typename);

	tup = FUNC7(TYPEOID, FUNC4(enum_type_oid));
	if (!FUNC1(tup))
		FUNC9(ERROR, "cache lookup failed for type %u", enum_type_oid);

	/* Check it's an enum and check user has permission to ALTER the enum */
	FUNC8(tup);

	FUNC5(tup);

	if (stmt->oldVal)
	{
		/* Rename an existing label */
		FUNC6(enum_type_oid, stmt->oldVal, stmt->newVal);
	}
	else
	{
		/* Add a new label */
		FUNC0(enum_type_oid, stmt->newVal,
					 stmt->newValNeighbor, stmt->newValIsAfter,
					 stmt->skipIfNewValExists);
	}

	FUNC2(TypeRelationId, enum_type_oid, 0);

	FUNC3(address, TypeRelationId, enum_type_oid);

	return address;
}