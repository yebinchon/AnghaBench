
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int subname; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_subscription ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SUBSCRIPTIONOID ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 char* pstrdup (int ) ;

char *
get_subscription_name(Oid subid, bool missing_ok)
{
 HeapTuple tup;
 char *subname;
 Form_pg_subscription subform;

 tup = SearchSysCache1(SUBSCRIPTIONOID, ObjectIdGetDatum(subid));

 if (!HeapTupleIsValid(tup))
 {
  if (!missing_ok)
   elog(ERROR, "cache lookup failed for subscription %u", subid);
  return ((void*)0);
 }

 subform = (Form_pg_subscription) GETSTRUCT(tup);
 subname = pstrdup(NameStr(subform->subname));

 ReleaseSysCache(tup);

 return subname;
}
