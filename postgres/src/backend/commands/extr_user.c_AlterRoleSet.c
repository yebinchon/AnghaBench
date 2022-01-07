
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int setstmt; int * database; scalar_t__ role; } ;
struct TYPE_4__ {scalar_t__ oid; scalar_t__ rolsuper; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_authid ;
typedef TYPE_2__ AlterRoleSetStmt ;


 int ACLCHECK_NOT_OWNER ;
 int AlterSetting (scalar_t__,scalar_t__,int ) ;
 int AuthIdRelationId ;
 int DatabaseRelationId ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ GetUserId () ;
 scalar_t__ InvalidOid ;
 int OBJECT_DATABASE ;
 int ReleaseSysCache (int ) ;
 int aclcheck_error (int ,int ,int *) ;
 int check_rolespec_name (scalar_t__,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ get_database_oid (int *,int) ;
 int get_rolespec_tuple (scalar_t__) ;
 int have_createrole_privilege () ;
 int pg_database_ownercheck (scalar_t__,scalar_t__) ;
 int shdepLockAndCheckObject (int ,scalar_t__) ;
 int superuser () ;

Oid
AlterRoleSet(AlterRoleSetStmt *stmt)
{
 HeapTuple roletuple;
 Form_pg_authid roleform;
 Oid databaseid = InvalidOid;
 Oid roleid = InvalidOid;

 if (stmt->role)
 {
  check_rolespec_name(stmt->role,
       "Cannot alter reserved roles.");

  roletuple = get_rolespec_tuple(stmt->role);
  roleform = (Form_pg_authid) GETSTRUCT(roletuple);
  roleid = roleform->oid;





  shdepLockAndCheckObject(AuthIdRelationId, roleid);





  if (roleform->rolsuper)
  {
   if (!superuser())
    ereport(ERROR,
      (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
       errmsg("must be superuser to alter superusers")));
  }
  else
  {
   if (!have_createrole_privilege() && roleid != GetUserId())
    ereport(ERROR,
      (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
       errmsg("permission denied")));
  }

  ReleaseSysCache(roletuple);
 }


 if (stmt->database != ((void*)0))
 {
  databaseid = get_database_oid(stmt->database, 0);
  shdepLockAndCheckObject(DatabaseRelationId, databaseid);

  if (!stmt->role)
  {




   if (!pg_database_ownercheck(databaseid, GetUserId()))
    aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_DATABASE,
          stmt->database);
  }
 }

 if (!stmt->role && !stmt->database)
 {

  if (!superuser())
   ereport(ERROR,
     (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
      errmsg("must be superuser to alter settings globally")));
 }

 AlterSetting(databaseid, roleid, stmt->setstmt);

 return roleid;
}
