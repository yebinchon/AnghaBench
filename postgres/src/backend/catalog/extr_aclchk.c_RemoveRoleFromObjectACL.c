
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int defaclobjtype; int defaclnamespace; int defaclrole; } ;
struct TYPE_7__ {int is_grant; int all_privs; int grant_option; void* behavior; void* grantees; void* privileges; void* objtype; int nspid; int roleid; } ;
struct TYPE_6__ {int is_grant; int all_privs; int grant_option; void* behavior; void* grantees; int col_privs; void* privileges; void* objects; void* objtype; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__ InternalGrant ;
typedef TYPE_2__ InternalDefaultACL ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_default_acl ;


 void* ACL_NO_RIGHTS ;
 int AccessShareLock ;
 int Anum_pg_default_acl_oid ;
 int BTEqualStrategyNumber ;





 void* DROP_CASCADE ;

 int DefaultAclOidIndexId ;
 int DefaultAclRelationId ;
 int ERROR ;
 int ExecGrantStmt_oids (TYPE_1__*) ;
 int F_OIDEQ ;


 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;


 int NIL ;

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
 int ObjectIdGetDatum (int) ;


 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SetDefaultACL (TYPE_2__*) ;


 int elog (int ,char*,int) ;
 void* list_make1_oid (int) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int,int ) ;

void
RemoveRoleFromObjectACL(Oid roleid, Oid classid, Oid objid)
{
 if (classid == DefaultAclRelationId)
 {
  InternalDefaultACL iacls;
  Form_pg_default_acl pg_default_acl_tuple;
  Relation rel;
  ScanKeyData skey[1];
  SysScanDesc scan;
  HeapTuple tuple;


  rel = table_open(DefaultAclRelationId, AccessShareLock);

  ScanKeyInit(&skey[0],
     Anum_pg_default_acl_oid,
     BTEqualStrategyNumber, F_OIDEQ,
     ObjectIdGetDatum(objid));

  scan = systable_beginscan(rel, DefaultAclOidIndexId, 1,
          ((void*)0), 1, skey);

  tuple = systable_getnext(scan);

  if (!HeapTupleIsValid(tuple))
   elog(ERROR, "could not find tuple for default ACL %u", objid);

  pg_default_acl_tuple = (Form_pg_default_acl) GETSTRUCT(tuple);

  iacls.roleid = pg_default_acl_tuple->defaclrole;
  iacls.nspid = pg_default_acl_tuple->defaclnamespace;

  switch (pg_default_acl_tuple->defaclobjtype)
  {
   case 140:
    iacls.objtype = OBJECT_TABLE;
    break;
   case 139:
    iacls.objtype = OBJECT_SEQUENCE;
    break;
   case 142:
    iacls.objtype = OBJECT_FUNCTION;
    break;
   case 138:
    iacls.objtype = OBJECT_TYPE;
    break;
   case 141:
    iacls.objtype = OBJECT_SCHEMA;
    break;
   default:

    elog(ERROR, "unexpected default ACL type: %d",
      (int) pg_default_acl_tuple->defaclobjtype);
    break;
  }

  systable_endscan(scan);
  table_close(rel, AccessShareLock);

  iacls.is_grant = 0;
  iacls.all_privs = 1;
  iacls.privileges = ACL_NO_RIGHTS;
  iacls.grantees = list_make1_oid(roleid);
  iacls.grant_option = 0;
  iacls.behavior = DROP_CASCADE;


  SetDefaultACL(&iacls);
 }
 else
 {
  InternalGrant istmt;

  switch (classid)
  {
   case 130:

    istmt.objtype = OBJECT_TABLE;
    break;
   case 137:
    istmt.objtype = OBJECT_DATABASE;
    break;
   case 128:
    istmt.objtype = OBJECT_TYPE;
    break;
   case 131:
    istmt.objtype = OBJECT_ROUTINE;
    break;
   case 134:
    istmt.objtype = OBJECT_LANGUAGE;
    break;
   case 133:
    istmt.objtype = OBJECT_LARGEOBJECT;
    break;
   case 132:
    istmt.objtype = OBJECT_SCHEMA;
    break;
   case 129:
    istmt.objtype = OBJECT_TABLESPACE;
    break;
   case 135:
    istmt.objtype = OBJECT_FOREIGN_SERVER;
    break;
   case 136:
    istmt.objtype = OBJECT_FDW;
    break;
   default:
    elog(ERROR, "unexpected object class %u", classid);
    break;
  }
  istmt.is_grant = 0;
  istmt.objects = list_make1_oid(objid);
  istmt.all_privs = 1;
  istmt.privileges = ACL_NO_RIGHTS;
  istmt.col_privs = NIL;
  istmt.grantees = list_make1_oid(roleid);
  istmt.grant_option = 0;
  istmt.behavior = DROP_CASCADE;

  ExecGrantStmt_oids(&istmt);
 }
}
