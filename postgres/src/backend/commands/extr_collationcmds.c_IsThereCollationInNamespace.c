
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int COLLNAMEENCNSP ;
 int CStringGetDatum (char const*) ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERROR ;
 int GetDatabaseEncoding () ;
 int GetDatabaseEncodingName () ;
 int Int32GetDatum (int) ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ SearchSysCacheExists3 (int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,int ,...) ;
 int get_namespace_name (int ) ;

void
IsThereCollationInNamespace(const char *collname, Oid nspOid)
{

 if (SearchSysCacheExists3(COLLNAMEENCNSP,
         CStringGetDatum(collname),
         Int32GetDatum(GetDatabaseEncoding()),
         ObjectIdGetDatum(nspOid)))
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_OBJECT),
     errmsg("collation \"%s\" for encoding \"%s\" already exists in schema \"%s\"",
      collname, GetDatabaseEncodingName(),
      get_namespace_name(nspOid))));


 if (SearchSysCacheExists3(COLLNAMEENCNSP,
         CStringGetDatum(collname),
         Int32GetDatum(-1),
         ObjectIdGetDatum(nspOid)))
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_OBJECT),
     errmsg("collation \"%s\" already exists in schema \"%s\"",
      collname, get_namespace_name(nspOid))));
}
