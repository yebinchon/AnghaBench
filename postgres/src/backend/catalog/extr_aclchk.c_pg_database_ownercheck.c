
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int datdba; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_database ;


 int DATABASEOID ;
 int ERRCODE_UNDEFINED_DATABASE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int has_privs_of_role (int ,int ) ;
 scalar_t__ superuser_arg (int ) ;

bool
pg_database_ownercheck(Oid db_oid, Oid roleid)
{
 HeapTuple tuple;
 Oid dba;


 if (superuser_arg(roleid))
  return 1;

 tuple = SearchSysCache1(DATABASEOID, ObjectIdGetDatum(db_oid));
 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_DATABASE),
     errmsg("database with OID %u does not exist", db_oid)));

 dba = ((Form_pg_database) GETSTRUCT(tuple))->datdba;

 ReleaseSysCache(tuple);

 return has_privs_of_role(roleid, dba);
}
