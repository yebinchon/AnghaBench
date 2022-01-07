
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int Anum_pg_language_oid ;
 int CStringGetDatum (char const*) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int GetSysCacheOid1 (int ,int ,int ) ;
 int LANGNAME ;
 int OidIsValid (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;

Oid
get_language_oid(const char *langname, bool missing_ok)
{
 Oid oid;

 oid = GetSysCacheOid1(LANGNAME, Anum_pg_language_oid,
        CStringGetDatum(langname));
 if (!OidIsValid(oid) && !missing_ok)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("language \"%s\" does not exist", langname)));
 return oid;
}
