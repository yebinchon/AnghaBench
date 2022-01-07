
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int Anum_pg_transform_oid ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int GetSysCacheOid2 (int ,int ,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int TRFTYPELANG ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ) ;
 int format_type_be (int ) ;
 int get_language_name (int ,int) ;

Oid
get_transform_oid(Oid type_id, Oid lang_id, bool missing_ok)
{
 Oid oid;

 oid = GetSysCacheOid2(TRFTYPELANG, Anum_pg_transform_oid,
        ObjectIdGetDatum(type_id),
        ObjectIdGetDatum(lang_id));
 if (!OidIsValid(oid) && !missing_ok)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("transform for type %s language \"%s\" does not exist",
      format_type_be(type_id),
      get_language_name(lang_id, 0))));
 return oid;
}
