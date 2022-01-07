
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int Anum_pg_subscription_oid ;
 int CStringGetDatum (char const*) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int GetSysCacheOid2 (int ,int ,int ,int ) ;
 int MyDatabaseId ;
 int OidIsValid (int ) ;
 int SUBSCRIPTIONNAME ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;

Oid
get_subscription_oid(const char *subname, bool missing_ok)
{
 Oid oid;

 oid = GetSysCacheOid2(SUBSCRIPTIONNAME, Anum_pg_subscription_oid,
        MyDatabaseId, CStringGetDatum(subname));
 if (!OidIsValid(oid) && !missing_ok)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("subscription \"%s\" does not exist", subname)));
 return oid;
}
