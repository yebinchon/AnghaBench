
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int Anum_pg_foreign_server_oid ;
 int CStringGetDatum (char const*) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int FOREIGNSERVERNAME ;
 int GetSysCacheOid1 (int ,int ,int ) ;
 int OidIsValid (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;

Oid
get_foreign_server_oid(const char *servername, bool missing_ok)
{
 Oid oid;

 oid = GetSysCacheOid1(FOREIGNSERVERNAME, Anum_pg_foreign_server_oid,
        CStringGetDatum(servername));
 if (!OidIsValid(oid) && !missing_ok)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("server \"%s\" does not exist", servername)));
 return oid;
}
