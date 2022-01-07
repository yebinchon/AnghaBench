
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proowner; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_proc ;


 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int PROCOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int has_privs_of_role (int ,int ) ;
 scalar_t__ superuser_arg (int ) ;

bool
pg_proc_ownercheck(Oid proc_oid, Oid roleid)
{
 HeapTuple tuple;
 Oid ownerId;


 if (superuser_arg(roleid))
  return 1;

 tuple = SearchSysCache1(PROCOID, ObjectIdGetDatum(proc_oid));
 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_FUNCTION),
     errmsg("function with OID %u does not exist", proc_oid)));

 ownerId = ((Form_pg_proc) GETSTRUCT(tuple))->proowner;

 ReleaseSysCache(tuple);

 return has_privs_of_role(roleid, ownerId);
}
