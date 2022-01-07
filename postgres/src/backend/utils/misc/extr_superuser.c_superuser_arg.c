
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rolsuper; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_authid ;
typedef int Datum ;


 int AUTHOID ;
 scalar_t__ BOOTSTRAP_SUPERUSERID ;
 int CacheRegisterSyscacheCallback (int ,int ,int ) ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int IsUnderPostmaster ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 int ReleaseSysCache (int ) ;
 int RoleidCallback ;
 int SearchSysCache1 (int ,int ) ;
 scalar_t__ last_roleid ;
 int last_roleid_is_super ;
 int roleid_callback_registered ;

bool
superuser_arg(Oid roleid)
{
 bool result;
 HeapTuple rtup;


 if (OidIsValid(last_roleid) && last_roleid == roleid)
  return last_roleid_is_super;


 if (!IsUnderPostmaster && roleid == BOOTSTRAP_SUPERUSERID)
  return 1;


 rtup = SearchSysCache1(AUTHOID, ObjectIdGetDatum(roleid));
 if (HeapTupleIsValid(rtup))
 {
  result = ((Form_pg_authid) GETSTRUCT(rtup))->rolsuper;
  ReleaseSysCache(rtup);
 }
 else
 {

  result = 0;
 }


 if (!roleid_callback_registered)
 {
  CacheRegisterSyscacheCallback(AUTHOID,
           RoleidCallback,
           (Datum) 0);
  roleid_callback_registered = 1;
 }


 last_roleid = roleid;
 last_roleid_is_super = result;

 return result;
}
