
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fdwowner; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_foreign_data_wrapper ;


 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int FOREIGNDATAWRAPPEROID ;
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
pg_foreign_data_wrapper_ownercheck(Oid srv_oid, Oid roleid)
{
 HeapTuple tuple;
 Oid ownerId;


 if (superuser_arg(roleid))
  return 1;

 tuple = SearchSysCache1(FOREIGNDATAWRAPPEROID, ObjectIdGetDatum(srv_oid));
 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("foreign-data wrapper with OID %u does not exist",
      srv_oid)));

 ownerId = ((Form_pg_foreign_data_wrapper) GETSTRUCT(tuple))->fdwowner;

 ReleaseSysCache(tuple);

 return has_privs_of_role(roleid, ownerId);
}
