
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int Anum_pg_cast_oid ;
 int CASTSOURCETARGET ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int GetSysCacheOid2 (int ,int ,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ) ;
 int format_type_be (int ) ;

Oid
get_cast_oid(Oid sourcetypeid, Oid targettypeid, bool missing_ok)
{
 Oid oid;

 oid = GetSysCacheOid2(CASTSOURCETARGET, Anum_pg_cast_oid,
        ObjectIdGetDatum(sourcetypeid),
        ObjectIdGetDatum(targettypeid));
 if (!OidIsValid(oid) && !missing_ok)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("cast from type %s to type %s does not exist",
      format_type_be(sourcetypeid),
      format_type_be(targettypeid))));
 return oid;
}
