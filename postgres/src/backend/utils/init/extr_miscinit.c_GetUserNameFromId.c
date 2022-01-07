
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rolname; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_authid ;


 int AUTHOID ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 char* pstrdup (int ) ;

char *
GetUserNameFromId(Oid roleid, bool noerr)
{
 HeapTuple tuple;
 char *result;

 tuple = SearchSysCache1(AUTHOID, ObjectIdGetDatum(roleid));
 if (!HeapTupleIsValid(tuple))
 {
  if (!noerr)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("invalid role OID: %u", roleid)));
  result = ((void*)0);
 }
 else
 {
  result = pstrdup(NameStr(((Form_pg_authid) GETSTRUCT(tuple))->rolname));
  ReleaseSysCache(tuple);
 }
 return result;
}
