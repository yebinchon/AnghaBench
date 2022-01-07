
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int Anum_pg_namespace_oid ;
 int CStringGetDatum (char const*) ;
 int ERRCODE_UNDEFINED_SCHEMA ;
 int ERROR ;
 int GetSysCacheOid1 (int ,int ,int ) ;
 int NAMESPACENAME ;
 int OidIsValid (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;

Oid
get_namespace_oid(const char *nspname, bool missing_ok)
{
 Oid oid;

 oid = GetSysCacheOid1(NAMESPACENAME, Anum_pg_namespace_oid,
        CStringGetDatum(nspname));
 if (!OidIsValid(oid) && !missing_ok)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_SCHEMA),
     errmsg("schema \"%s\" does not exist", nspname)));

 return oid;
}
