#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ oid; } ;
struct TYPE_7__ {int /*<<< orphan*/  oid; } ;
struct TYPE_6__ {int /*<<< orphan*/  objectId; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_default_acl ;
typedef  TYPE_3__* Form_pg_authid ;

/* Variables and functions */
 int /*<<< orphan*/  AUTHNAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
#define  DEFACLOBJ_FUNCTION 132 
#define  DEFACLOBJ_NAMESPACE 131 
#define  DEFACLOBJ_RELATION 130 
#define  DEFACLOBJ_SEQUENCE 129 
#define  DEFACLOBJ_TYPE 128 
 int /*<<< orphan*/  DEFACLROLENSPOBJ ; 
 int /*<<< orphan*/  DefaultAclRelationId ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int const,int const,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 scalar_t__ FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 char* FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ObjectAddress
FUNC19(List *object, bool missing_ok)
{
	HeapTuple	tp;
	Oid			userid;
	Oid			schemaid;
	char	   *username;
	char	   *schema;
	char		objtype;
	char	   *objtype_str;
	ObjectAddress address;

	FUNC4(address, DefaultAclRelationId, InvalidOid);

	/*
	 * First figure out the textual attributes so that they can be used for
	 * error reporting.
	 */
	username = FUNC18(FUNC16(object));
	if (FUNC15(object) >= 3)
		schema = (char *) FUNC18(FUNC17(object));
	else
		schema = NULL;

	/*
	 * Decode defaclobjtype.  Only first char is considered; the rest of the
	 * string, if any, is blissfully ignored.
	 */
	objtype = ((char *) FUNC18(FUNC14(object)))[0];
	switch (objtype)
	{
		case DEFACLOBJ_RELATION:
			objtype_str = "tables";
			break;
		case DEFACLOBJ_SEQUENCE:
			objtype_str = "sequences";
			break;
		case DEFACLOBJ_FUNCTION:
			objtype_str = "functions";
			break;
		case DEFACLOBJ_TYPE:
			objtype_str = "types";
			break;
		case DEFACLOBJ_NAMESPACE:
			objtype_str = "schemas";
			break;
		default:
			FUNC9(ERROR,
					(FUNC10(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC12("unrecognized default ACL object type \"%c\"", objtype),
					 FUNC11("Valid object types are \"%c\", \"%c\", \"%c\", \"%c\", \"%c\".",
							 DEFACLOBJ_RELATION,
							 DEFACLOBJ_SEQUENCE,
							 DEFACLOBJ_FUNCTION,
							 DEFACLOBJ_TYPE,
							 DEFACLOBJ_NAMESPACE)));
	}

	/*
	 * Look up user ID.  Behave as "default ACL not found" if the user doesn't
	 * exist.
	 */
	tp = FUNC7(AUTHNAME,
						 FUNC0(username));
	if (!FUNC3(tp))
		goto not_found;
	userid = ((Form_pg_authid) FUNC2(tp))->oid;
	FUNC6(tp);

	/*
	 * If a schema name was given, look up its OID.  If it doesn't exist,
	 * behave as "default ACL not found".
	 */
	if (schema)
	{
		schemaid = FUNC13(schema, true);
		if (schemaid == InvalidOid)
			goto not_found;
	}
	else
		schemaid = InvalidOid;

	/* Finally, look up the pg_default_acl object */
	tp = FUNC8(DEFACLROLENSPOBJ,
						 FUNC5(userid),
						 FUNC5(schemaid),
						 FUNC1(objtype));
	if (!FUNC3(tp))
		goto not_found;

	address.objectId = ((Form_pg_default_acl) FUNC2(tp))->oid;
	FUNC6(tp);

	return address;

not_found:
	if (!missing_ok)
	{
		if (schema)
			FUNC9(ERROR,
					(FUNC10(ERRCODE_UNDEFINED_OBJECT),
					 FUNC12("default ACL for user \"%s\" in schema \"%s\" on %s does not exist",
							username, schema, objtype_str)));
		else
			FUNC9(ERROR,
					(FUNC10(ERRCODE_UNDEFINED_OBJECT),
					 FUNC12("default ACL for user \"%s\" on %s does not exist",
							username, objtype_str)));
	}
	return address;
}