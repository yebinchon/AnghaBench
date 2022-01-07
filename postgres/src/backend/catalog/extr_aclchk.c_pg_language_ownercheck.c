
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lanowner; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_language ;


 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int LANGOID ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int has_privs_of_role (int ,int ) ;
 scalar_t__ superuser_arg (int ) ;

bool
pg_language_ownercheck(Oid lan_oid, Oid roleid)
{
 HeapTuple tuple;
 Oid ownerId;


 if (superuser_arg(roleid))
  return 1;

 tuple = SearchSysCache1(LANGOID, ObjectIdGetDatum(lan_oid));
 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_FUNCTION),
     errmsg("language with OID %u does not exist", lan_oid)));

 ownerId = ((Form_pg_language) GETSTRUCT(tuple))->lanowner;

 ReleaseSysCache(tuple);

 return has_privs_of_role(roleid, ownerId);
}
