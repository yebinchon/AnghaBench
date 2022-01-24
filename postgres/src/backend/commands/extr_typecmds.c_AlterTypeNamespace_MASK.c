#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  TypeName ;
typedef  int /*<<< orphan*/  Oid ;
typedef  scalar_t__ ObjectType ;
typedef  int /*<<< orphan*/  ObjectAddresses ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ OBJECT_DOMAIN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TYPTYPE_DOMAIN ; 
 int /*<<< orphan*/  TypeRelationId ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

ObjectAddress
FUNC12(List *names, const char *newschema, ObjectType objecttype,
				   Oid *oldschema)
{
	TypeName   *typename;
	Oid			typeOid;
	Oid			nspOid;
	Oid			oldNspOid;
	ObjectAddresses *objsMoved;
	ObjectAddress myself;

	/* Make a TypeName so we can use standard type lookup machinery */
	typename = FUNC9(names);
	typeOid = FUNC11(NULL, typename);

	/* Don't allow ALTER DOMAIN on a type */
	if (objecttype == OBJECT_DOMAIN && FUNC8(typeOid) != TYPTYPE_DOMAIN)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC5("%s is not a domain",
						FUNC6(typeOid))));

	/* get schema OID and check its permissions */
	nspOid = FUNC1(newschema);

	objsMoved = FUNC10();
	oldNspOid = FUNC0(typeOid, nspOid, objsMoved);
	FUNC7(objsMoved);

	if (oldschema)
		*oldschema = oldNspOid;

	FUNC2(myself, TypeRelationId, typeOid);

	return myself;
}