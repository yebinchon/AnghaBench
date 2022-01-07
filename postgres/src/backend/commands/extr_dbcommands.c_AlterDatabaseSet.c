
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int setstmt; int dbname; } ;
typedef int Oid ;
typedef TYPE_1__ AlterDatabaseSetStmt ;


 int ACLCHECK_NOT_OWNER ;
 int AccessShareLock ;
 int AlterSetting (int ,int ,int ) ;
 int DatabaseRelationId ;
 int GetUserId () ;
 int InvalidOid ;
 int OBJECT_DATABASE ;
 int UnlockSharedObject (int ,int ,int ,int ) ;
 int aclcheck_error (int ,int ,int ) ;
 int get_database_oid (int ,int) ;
 int pg_database_ownercheck (int ,int ) ;
 int shdepLockAndCheckObject (int ,int ) ;

Oid
AlterDatabaseSet(AlterDatabaseSetStmt *stmt)
{
 Oid datid = get_database_oid(stmt->dbname, 0);





 shdepLockAndCheckObject(DatabaseRelationId, datid);

 if (!pg_database_ownercheck(datid, GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_DATABASE,
        stmt->dbname);

 AlterSetting(datid, InvalidOid, stmt->setstmt);

 UnlockSharedObject(DatabaseRelationId, datid, 0, AccessShareLock);

 return datid;
}
