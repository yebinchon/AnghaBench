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
typedef  int /*<<< orphan*/  AttrNumber ;
typedef  scalar_t__ AclMode ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NO_PRIV ; 
 int /*<<< orphan*/  ACLMASK_ANY ; 
 scalar_t__ ACL_ALL_RIGHTS_COLUMN ; 
 scalar_t__ ACL_ALL_RIGHTS_DATABASE ; 
 scalar_t__ ACL_ALL_RIGHTS_FDW ; 
 scalar_t__ ACL_ALL_RIGHTS_FOREIGN_SERVER ; 
 scalar_t__ ACL_ALL_RIGHTS_FUNCTION ; 
 scalar_t__ ACL_ALL_RIGHTS_LANGUAGE ; 
 scalar_t__ ACL_ALL_RIGHTS_LARGEOBJECT ; 
 scalar_t__ ACL_ALL_RIGHTS_RELATION ; 
 scalar_t__ ACL_ALL_RIGHTS_SCHEMA ; 
 scalar_t__ ACL_ALL_RIGHTS_SEQUENCE ; 
 scalar_t__ ACL_ALL_RIGHTS_TABLESPACE ; 
 scalar_t__ ACL_ALL_RIGHTS_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ ACL_NO_RIGHTS ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  ERRCODE_WARNING_PRIVILEGE_NOT_GRANTED ; 
 int /*<<< orphan*/  ERRCODE_WARNING_PRIVILEGE_NOT_REVOKED ; 
 int /*<<< orphan*/  ERROR ; 
#define  OBJECT_COLUMN 140 
#define  OBJECT_DATABASE 139 
#define  OBJECT_EVENT_TRIGGER 138 
#define  OBJECT_FDW 137 
#define  OBJECT_FOREIGN_SERVER 136 
#define  OBJECT_FUNCTION 135 
#define  OBJECT_LANGUAGE 134 
#define  OBJECT_LARGEOBJECT 133 
#define  OBJECT_SCHEMA 132 
#define  OBJECT_SEQUENCE 131 
#define  OBJECT_TABLE 130 
#define  OBJECT_TABLESPACE 129 
#define  OBJECT_TYPE 128 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,...) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static AclMode
FUNC9(bool is_grant, AclMode avail_goptions, bool all_privs,
						 AclMode privileges, Oid objectId, Oid grantorId,
						 ObjectType objtype, const char *objname,
						 AttrNumber att_number, const char *colname)
{
	AclMode		this_privileges;
	AclMode		whole_mask;

	switch (objtype)
	{
		case OBJECT_COLUMN:
			whole_mask = ACL_ALL_RIGHTS_COLUMN;
			break;
		case OBJECT_TABLE:
			whole_mask = ACL_ALL_RIGHTS_RELATION;
			break;
		case OBJECT_SEQUENCE:
			whole_mask = ACL_ALL_RIGHTS_SEQUENCE;
			break;
		case OBJECT_DATABASE:
			whole_mask = ACL_ALL_RIGHTS_DATABASE;
			break;
		case OBJECT_FUNCTION:
			whole_mask = ACL_ALL_RIGHTS_FUNCTION;
			break;
		case OBJECT_LANGUAGE:
			whole_mask = ACL_ALL_RIGHTS_LANGUAGE;
			break;
		case OBJECT_LARGEOBJECT:
			whole_mask = ACL_ALL_RIGHTS_LARGEOBJECT;
			break;
		case OBJECT_SCHEMA:
			whole_mask = ACL_ALL_RIGHTS_SCHEMA;
			break;
		case OBJECT_TABLESPACE:
			whole_mask = ACL_ALL_RIGHTS_TABLESPACE;
			break;
		case OBJECT_FDW:
			whole_mask = ACL_ALL_RIGHTS_FDW;
			break;
		case OBJECT_FOREIGN_SERVER:
			whole_mask = ACL_ALL_RIGHTS_FOREIGN_SERVER;
			break;
		case OBJECT_EVENT_TRIGGER:
			FUNC4(ERROR, "grantable rights not supported for event triggers");
			/* not reached, but keep compiler quiet */
			return ACL_NO_RIGHTS;
		case OBJECT_TYPE:
			whole_mask = ACL_ALL_RIGHTS_TYPE;
			break;
		default:
			FUNC4(ERROR, "unrecognized object type: %d", objtype);
			/* not reached, but keep compiler quiet */
			return ACL_NO_RIGHTS;
	}

	/*
	 * If we found no grant options, consider whether to issue a hard error.
	 * Per spec, having any privilege at all on the object will get you by
	 * here.
	 */
	if (avail_goptions == ACL_NO_RIGHTS)
	{
		if (FUNC8(objtype, objectId, att_number, grantorId,
					   whole_mask | FUNC0(whole_mask),
					   ACLMASK_ANY) == ACL_NO_RIGHTS)
		{
			if (objtype == OBJECT_COLUMN && colname)
				FUNC3(ACLCHECK_NO_PRIV, objtype, objname, colname);
			else
				FUNC2(ACLCHECK_NO_PRIV, objtype, objname);
		}
	}

	/*
	 * Restrict the operation to what we can actually grant or revoke, and
	 * issue a warning if appropriate.  (For REVOKE this isn't quite what the
	 * spec says to do: the spec seems to want a warning only if no privilege
	 * bits actually change in the ACL. In practice that behavior seems much
	 * too noisy, as well as inconsistent with the GRANT case.)
	 */
	this_privileges = privileges & FUNC1(avail_goptions);
	if (is_grant)
	{
		if (this_privileges == 0)
		{
			if (objtype == OBJECT_COLUMN && colname)
				FUNC5(WARNING,
						(FUNC6(ERRCODE_WARNING_PRIVILEGE_NOT_GRANTED),
						 FUNC7("no privileges were granted for column \"%s\" of relation \"%s\"",
								colname, objname)));
			else
				FUNC5(WARNING,
						(FUNC6(ERRCODE_WARNING_PRIVILEGE_NOT_GRANTED),
						 FUNC7("no privileges were granted for \"%s\"",
								objname)));
		}
		else if (!all_privs && this_privileges != privileges)
		{
			if (objtype == OBJECT_COLUMN && colname)
				FUNC5(WARNING,
						(FUNC6(ERRCODE_WARNING_PRIVILEGE_NOT_GRANTED),
						 FUNC7("not all privileges were granted for column \"%s\" of relation \"%s\"",
								colname, objname)));
			else
				FUNC5(WARNING,
						(FUNC6(ERRCODE_WARNING_PRIVILEGE_NOT_GRANTED),
						 FUNC7("not all privileges were granted for \"%s\"",
								objname)));
		}
	}
	else
	{
		if (this_privileges == 0)
		{
			if (objtype == OBJECT_COLUMN && colname)
				FUNC5(WARNING,
						(FUNC6(ERRCODE_WARNING_PRIVILEGE_NOT_REVOKED),
						 FUNC7("no privileges could be revoked for column \"%s\" of relation \"%s\"",
								colname, objname)));
			else
				FUNC5(WARNING,
						(FUNC6(ERRCODE_WARNING_PRIVILEGE_NOT_REVOKED),
						 FUNC7("no privileges could be revoked for \"%s\"",
								objname)));
		}
		else if (!all_privs && this_privileges != privileges)
		{
			if (objtype == OBJECT_COLUMN && colname)
				FUNC5(WARNING,
						(FUNC6(ERRCODE_WARNING_PRIVILEGE_NOT_REVOKED),
						 FUNC7("not all privileges could be revoked for column \"%s\" of relation \"%s\"",
								colname, objname)));
			else
				FUNC5(WARNING,
						(FUNC6(ERRCODE_WARNING_PRIVILEGE_NOT_REVOKED),
						 FUNC7("not all privileges could be revoked for \"%s\"",
								objname)));
		}
	}

	return this_privileges;
}