
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int CStringGetDatum (char const*) ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERROR ;
 int OPFAMILYAMNAMENSP ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ SearchSysCacheExists3 (int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,int ,int ) ;
 int get_am_name (int ) ;
 int get_namespace_name (int ) ;

void
IsThereOpFamilyInNamespace(const char *opfname, Oid opfmethod,
         Oid opfnamespace)
{

 if (SearchSysCacheExists3(OPFAMILYAMNAMENSP,
         ObjectIdGetDatum(opfmethod),
         CStringGetDatum(opfname),
         ObjectIdGetDatum(opfnamespace)))
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_OBJECT),
     errmsg("operator family \"%s\" for access method \"%s\" already exists in schema \"%s\"",
      opfname,
      get_am_name(opfmethod),
      get_namespace_name(opfnamespace))));
}
