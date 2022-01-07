
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int AUTHNAME ;
 int Anum_pg_authid_oid ;
 int CStringGetDatum (char const*) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int GetSysCacheOid1 (int ,int ,int ) ;
 int OidIsValid (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;

Oid
get_role_oid(const char *rolname, bool missing_ok)
{
 Oid oid;

 oid = GetSysCacheOid1(AUTHNAME, Anum_pg_authid_oid,
        CStringGetDatum(rolname));
 if (!OidIsValid(oid) && !missing_ok)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("role \"%s\" does not exist", rolname)));
 return oid;
}
