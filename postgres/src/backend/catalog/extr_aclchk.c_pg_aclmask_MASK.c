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
typedef  int AclMode ;
typedef  int /*<<< orphan*/  AclMaskHow ;

/* Variables and functions */
 int ACL_NO_RIGHTS ; 
 int /*<<< orphan*/  ERROR ; 
#define  OBJECT_COLUMN 141 
#define  OBJECT_DATABASE 140 
#define  OBJECT_EVENT_TRIGGER 139 
#define  OBJECT_FDW 138 
#define  OBJECT_FOREIGN_SERVER 137 
#define  OBJECT_FUNCTION 136 
#define  OBJECT_LANGUAGE 135 
#define  OBJECT_LARGEOBJECT 134 
#define  OBJECT_SCHEMA 133 
#define  OBJECT_SEQUENCE 132 
#define  OBJECT_STATISTIC_EXT 131 
#define  OBJECT_TABLE 130 
#define  OBJECT_TABLESPACE 129 
#define  OBJECT_TYPE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static AclMode
FUNC12(ObjectType objtype, Oid table_oid, AttrNumber attnum, Oid roleid,
		   AclMode mask, AclMaskHow how)
{
	switch (objtype)
	{
		case OBJECT_COLUMN:
			return
				FUNC2(table_oid, roleid, mask, how) |
				FUNC1(table_oid, attnum, roleid, mask, how);
		case OBJECT_TABLE:
		case OBJECT_SEQUENCE:
			return FUNC2(table_oid, roleid, mask, how);
		case OBJECT_DATABASE:
			return FUNC3(table_oid, roleid, mask, how);
		case OBJECT_FUNCTION:
			return FUNC9(table_oid, roleid, mask, how);
		case OBJECT_LANGUAGE:
			return FUNC6(table_oid, roleid, mask, how);
		case OBJECT_LARGEOBJECT:
			return FUNC7(table_oid, roleid,
												   mask, how, NULL);
		case OBJECT_SCHEMA:
			return FUNC8(table_oid, roleid, mask, how);
		case OBJECT_STATISTIC_EXT:
			FUNC0(ERROR, "grantable rights not supported for statistics objects");
			/* not reached, but keep compiler quiet */
			return ACL_NO_RIGHTS;
		case OBJECT_TABLESPACE:
			return FUNC10(table_oid, roleid, mask, how);
		case OBJECT_FDW:
			return FUNC4(table_oid, roleid, mask, how);
		case OBJECT_FOREIGN_SERVER:
			return FUNC5(table_oid, roleid, mask, how);
		case OBJECT_EVENT_TRIGGER:
			FUNC0(ERROR, "grantable rights not supported for event triggers");
			/* not reached, but keep compiler quiet */
			return ACL_NO_RIGHTS;
		case OBJECT_TYPE:
			return FUNC11(table_oid, roleid, mask, how);
		default:
			FUNC0(ERROR, "unrecognized objtype: %d",
				 (int) objtype);
			/* not reached, but keep compiler quiet */
			return ACL_NO_RIGHTS;
	}
}