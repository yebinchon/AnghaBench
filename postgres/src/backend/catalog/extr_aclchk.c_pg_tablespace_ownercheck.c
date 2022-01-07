
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int spcowner; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_tablespace ;


 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TABLESPACEOID ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int has_privs_of_role (int ,int ) ;
 scalar_t__ superuser_arg (int ) ;

bool
pg_tablespace_ownercheck(Oid spc_oid, Oid roleid)
{
 HeapTuple spctuple;
 Oid spcowner;


 if (superuser_arg(roleid))
  return 1;


 spctuple = SearchSysCache1(TABLESPACEOID, ObjectIdGetDatum(spc_oid));
 if (!HeapTupleIsValid(spctuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("tablespace with OID %u does not exist", spc_oid)));

 spcowner = ((Form_pg_tablespace) GETSTRUCT(spctuple))->spcowner;

 ReleaseSysCache(spctuple);

 return has_privs_of_role(roleid, spcowner);
}
