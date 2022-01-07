
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int Anum_pg_class_oid ;
 int GetSysCacheOid2 (int ,int ,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (char const*) ;
 int RELNAMENSP ;

Oid
get_relname_relid(const char *relname, Oid relnamespace)
{
 return GetSysCacheOid2(RELNAMENSP, Anum_pg_class_oid,
         PointerGetDatum(relname),
         ObjectIdGetDatum(relnamespace));
}
