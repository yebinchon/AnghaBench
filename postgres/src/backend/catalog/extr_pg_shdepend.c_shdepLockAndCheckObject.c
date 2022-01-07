
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int AUTHOID ;
 int AccessShareLock ;


 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int LockSharedObject (int,int,int ,int ) ;
 int ObjectIdGetDatum (int) ;
 int SearchSysCacheExists1 (int ,int ) ;

 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int) ;
 char* get_database_name (int) ;
 char* get_tablespace_name (int) ;
 int pfree (char*) ;

void
shdepLockAndCheckObject(Oid classId, Oid objectId)
{

 LockSharedObject(classId, objectId, 0, AccessShareLock);

 switch (classId)
 {
  case 130:
   if (!SearchSysCacheExists1(AUTHOID, ObjectIdGetDatum(objectId)))
    ereport(ERROR,
      (errcode(ERRCODE_UNDEFINED_OBJECT),
       errmsg("role %u was concurrently dropped",
        objectId)));
   break;
  case 129:
   {

    char *database = get_database_name(objectId);

    if (database == ((void*)0))
     ereport(ERROR,
       (errcode(ERRCODE_UNDEFINED_OBJECT),
        errmsg("database %u was concurrently dropped",
         objectId)));
    pfree(database);
    break;
   }


  default:
   elog(ERROR, "unrecognized shared classId: %u", classId);
 }
}
