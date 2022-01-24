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
typedef  int /*<<< orphan*/  Oid ;
typedef  int ObjectType ;
typedef  int /*<<< orphan*/  Acl ;

/* Variables and functions */
 char DEFACLOBJ_FUNCTION ; 
 char DEFACLOBJ_NAMESPACE ; 
 char DEFACLOBJ_RELATION ; 
 char DEFACLOBJ_SEQUENCE ; 
 char DEFACLOBJ_TYPE ; 
 int /*<<< orphan*/  InvalidOid ; 
 scalar_t__ FUNC0 () ; 
#define  OBJECT_FUNCTION 132 
#define  OBJECT_SCHEMA 131 
#define  OBJECT_SEQUENCE 130 
#define  OBJECT_TABLE 129 
#define  OBJECT_TYPE 128 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char) ; 

Acl *
FUNC6(ObjectType objtype, Oid ownerId, Oid nsp_oid)
{
	Acl		   *result;
	Acl		   *glob_acl;
	Acl		   *schema_acl;
	Acl		   *def_acl;
	char		defaclobjtype;

	/*
	 * Use NULL during bootstrap, since pg_default_acl probably isn't there
	 * yet.
	 */
	if (FUNC0())
		return NULL;

	/* Check if object type is supported in pg_default_acl */
	switch (objtype)
	{
		case OBJECT_TABLE:
			defaclobjtype = DEFACLOBJ_RELATION;
			break;

		case OBJECT_SEQUENCE:
			defaclobjtype = DEFACLOBJ_SEQUENCE;
			break;

		case OBJECT_FUNCTION:
			defaclobjtype = DEFACLOBJ_FUNCTION;
			break;

		case OBJECT_TYPE:
			defaclobjtype = DEFACLOBJ_TYPE;
			break;

		case OBJECT_SCHEMA:
			defaclobjtype = DEFACLOBJ_NAMESPACE;
			break;

		default:
			return NULL;
	}

	/* Look up the relevant pg_default_acl entries */
	glob_acl = FUNC5(ownerId, InvalidOid, defaclobjtype);
	schema_acl = FUNC5(ownerId, nsp_oid, defaclobjtype);

	/* Quick out if neither entry exists */
	if (glob_acl == NULL && schema_acl == NULL)
		return NULL;

	/* We need to know the hard-wired default value, too */
	def_acl = FUNC1(objtype, ownerId);

	/* If there's no global entry, substitute the hard-wired default */
	if (glob_acl == NULL)
		glob_acl = def_acl;

	/* Merge in any per-schema privileges */
	result = FUNC4(glob_acl, schema_acl, ownerId);

	/*
	 * For efficiency, we want to return NULL if the result equals default.
	 * This requires sorting both arrays to get an accurate comparison.
	 */
	FUNC3(result);
	FUNC3(def_acl);
	if (FUNC2(result, def_acl))
		result = NULL;

	return result;
}