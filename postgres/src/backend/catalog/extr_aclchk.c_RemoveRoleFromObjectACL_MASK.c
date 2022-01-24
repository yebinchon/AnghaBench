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
struct TYPE_8__ {int defaclobjtype; int /*<<< orphan*/  defaclnamespace; int /*<<< orphan*/  defaclrole; } ;
struct TYPE_7__ {int is_grant; int all_privs; int grant_option; void* behavior; void* grantees; void* privileges; void* objtype; int /*<<< orphan*/  nspid; int /*<<< orphan*/  roleid; } ;
struct TYPE_6__ {int is_grant; int all_privs; int grant_option; void* behavior; void* grantees; int /*<<< orphan*/  col_privs; void* privileges; void* objects; void* objtype; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int Oid ;
typedef  TYPE_1__ InternalGrant ;
typedef  TYPE_2__ InternalDefaultACL ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_default_acl ;

/* Variables and functions */
 void* ACL_NO_RIGHTS ; 
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_default_acl_oid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
#define  DEFACLOBJ_FUNCTION 142 
#define  DEFACLOBJ_NAMESPACE 141 
#define  DEFACLOBJ_RELATION 140 
#define  DEFACLOBJ_SEQUENCE 139 
#define  DEFACLOBJ_TYPE 138 
 void* DROP_CASCADE ; 
#define  DatabaseRelationId 137 
 int /*<<< orphan*/  DefaultAclOidIndexId ; 
 int DefaultAclRelationId ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  F_OIDEQ ; 
#define  ForeignDataWrapperRelationId 136 
#define  ForeignServerRelationId 135 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  LanguageRelationId 134 
#define  LargeObjectRelationId 133 
 int /*<<< orphan*/  NIL ; 
#define  NamespaceRelationId 132 
 void* OBJECT_DATABASE ; 
 void* OBJECT_FDW ; 
 void* OBJECT_FOREIGN_SERVER ; 
 void* OBJECT_FUNCTION ; 
 void* OBJECT_LANGUAGE ; 
 void* OBJECT_LARGEOBJECT ; 
 void* OBJECT_ROUTINE ; 
 void* OBJECT_SCHEMA ; 
 void* OBJECT_SEQUENCE ; 
 void* OBJECT_TABLE ; 
 void* OBJECT_TABLESPACE ; 
 void* OBJECT_TYPE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
#define  ProcedureRelationId 131 
#define  RelationRelationId 130 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
#define  TableSpaceRelationId 129 
#define  TypeRelationId 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 

void
FUNC13(Oid roleid, Oid classid, Oid objid)
{
	if (classid == DefaultAclRelationId)
	{
		InternalDefaultACL iacls;
		Form_pg_default_acl pg_default_acl_tuple;
		Relation	rel;
		ScanKeyData skey[1];
		SysScanDesc scan;
		HeapTuple	tuple;

		/* first fetch info needed by SetDefaultACL */
		rel = FUNC12(DefaultAclRelationId, AccessShareLock);

		FUNC4(&skey[0],
					Anum_pg_default_acl_oid,
					BTEqualStrategyNumber, F_OIDEQ,
					FUNC3(objid));

		scan = FUNC8(rel, DefaultAclOidIndexId, true,
								  NULL, 1, skey);

		tuple = FUNC10(scan);

		if (!FUNC2(tuple))
			FUNC6(ERROR, "could not find tuple for default ACL %u", objid);

		pg_default_acl_tuple = (Form_pg_default_acl) FUNC1(tuple);

		iacls.roleid = pg_default_acl_tuple->defaclrole;
		iacls.nspid = pg_default_acl_tuple->defaclnamespace;

		switch (pg_default_acl_tuple->defaclobjtype)
		{
			case DEFACLOBJ_RELATION:
				iacls.objtype = OBJECT_TABLE;
				break;
			case DEFACLOBJ_SEQUENCE:
				iacls.objtype = OBJECT_SEQUENCE;
				break;
			case DEFACLOBJ_FUNCTION:
				iacls.objtype = OBJECT_FUNCTION;
				break;
			case DEFACLOBJ_TYPE:
				iacls.objtype = OBJECT_TYPE;
				break;
			case DEFACLOBJ_NAMESPACE:
				iacls.objtype = OBJECT_SCHEMA;
				break;
			default:
				/* Shouldn't get here */
				FUNC6(ERROR, "unexpected default ACL type: %d",
					 (int) pg_default_acl_tuple->defaclobjtype);
				break;
		}

		FUNC9(scan);
		FUNC11(rel, AccessShareLock);

		iacls.is_grant = false;
		iacls.all_privs = true;
		iacls.privileges = ACL_NO_RIGHTS;
		iacls.grantees = FUNC7(roleid);
		iacls.grant_option = false;
		iacls.behavior = DROP_CASCADE;

		/* Do it */
		FUNC5(&iacls);
	}
	else
	{
		InternalGrant istmt;

		switch (classid)
		{
			case RelationRelationId:
				/* it's OK to use TABLE for a sequence */
				istmt.objtype = OBJECT_TABLE;
				break;
			case DatabaseRelationId:
				istmt.objtype = OBJECT_DATABASE;
				break;
			case TypeRelationId:
				istmt.objtype = OBJECT_TYPE;
				break;
			case ProcedureRelationId:
				istmt.objtype = OBJECT_ROUTINE;
				break;
			case LanguageRelationId:
				istmt.objtype = OBJECT_LANGUAGE;
				break;
			case LargeObjectRelationId:
				istmt.objtype = OBJECT_LARGEOBJECT;
				break;
			case NamespaceRelationId:
				istmt.objtype = OBJECT_SCHEMA;
				break;
			case TableSpaceRelationId:
				istmt.objtype = OBJECT_TABLESPACE;
				break;
			case ForeignServerRelationId:
				istmt.objtype = OBJECT_FOREIGN_SERVER;
				break;
			case ForeignDataWrapperRelationId:
				istmt.objtype = OBJECT_FDW;
				break;
			default:
				FUNC6(ERROR, "unexpected object class %u", classid);
				break;
		}
		istmt.is_grant = false;
		istmt.objects = FUNC7(objid);
		istmt.all_privs = true;
		istmt.privileges = ACL_NO_RIGHTS;
		istmt.col_privs = NIL;
		istmt.grantees = FUNC7(roleid);
		istmt.grant_option = false;
		istmt.behavior = DROP_CASCADE;

		FUNC0(&istmt);
	}
}