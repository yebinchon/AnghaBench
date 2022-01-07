
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int CLAAMNAMENSP ;
 int CStringGetDatum (char const*) ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERROR ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ SearchSysCacheExists3 (int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,int ,int ) ;
 int get_am_name (int ) ;
 int get_namespace_name (int ) ;

void
IsThereOpClassInNamespace(const char *opcname, Oid opcmethod,
        Oid opcnamespace)
{

 if (SearchSysCacheExists3(CLAAMNAMENSP,
         ObjectIdGetDatum(opcmethod),
         CStringGetDatum(opcname),
         ObjectIdGetDatum(opcnamespace)))
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_OBJECT),
     errmsg("operator class \"%s\" for access method \"%s\" already exists in schema \"%s\"",
      opcname,
      get_am_name(opcmethod),
      get_namespace_name(opcnamespace))));
}
