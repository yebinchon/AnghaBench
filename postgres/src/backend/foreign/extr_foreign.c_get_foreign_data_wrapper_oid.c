
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int Anum_pg_foreign_data_wrapper_oid ;
 int CStringGetDatum (char const*) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int FOREIGNDATAWRAPPERNAME ;
 int GetSysCacheOid1 (int ,int ,int ) ;
 int OidIsValid (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;

Oid
get_foreign_data_wrapper_oid(const char *fdwname, bool missing_ok)
{
 Oid oid;

 oid = GetSysCacheOid1(FOREIGNDATAWRAPPERNAME,
        Anum_pg_foreign_data_wrapper_oid,
        CStringGetDatum(fdwname));
 if (!OidIsValid(oid) && !missing_ok)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("foreign-data wrapper \"%s\" does not exist",
      fdwname)));
 return oid;
}
