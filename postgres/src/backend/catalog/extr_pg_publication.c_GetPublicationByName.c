
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Publication ;
typedef int Oid ;


 int Anum_pg_publication_oid ;
 int CStringGetDatum (char const*) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int * GetPublication (int ) ;
 int GetSysCacheOid1 (int ,int ,int ) ;
 int OidIsValid (int ) ;
 int PUBLICATIONNAME ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;

Publication *
GetPublicationByName(const char *pubname, bool missing_ok)
{
 Oid oid;

 oid = GetSysCacheOid1(PUBLICATIONNAME, Anum_pg_publication_oid,
        CStringGetDatum(pubname));
 if (!OidIsValid(oid))
 {
  if (missing_ok)
   return ((void*)0);

  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("publication \"%s\" does not exist", pubname)));
 }

 return GetPublication(oid);
}
