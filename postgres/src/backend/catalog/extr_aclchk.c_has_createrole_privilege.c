
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rolcreaterole; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_authid ;


 int AUTHOID ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 scalar_t__ superuser_arg (int ) ;

bool
has_createrole_privilege(Oid roleid)
{
 bool result = 0;
 HeapTuple utup;


 if (superuser_arg(roleid))
  return 1;

 utup = SearchSysCache1(AUTHOID, ObjectIdGetDatum(roleid));
 if (HeapTupleIsValid(utup))
 {
  result = ((Form_pg_authid) GETSTRUCT(utup))->rolcreaterole;
  ReleaseSysCache(utup);
 }
 return result;
}
