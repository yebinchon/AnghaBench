
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_2__ {scalar_t__ collprovider; int oid; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_collation ;


 int Anum_pg_collation_oid ;
 int COLLNAMEENCNSP ;
 scalar_t__ COLLPROVIDER_ICU ;
 scalar_t__ GETSTRUCT (int ) ;
 int GetSysCacheOid3 (int ,int ,int ,int ,int ) ;
 int HeapTupleIsValid (int ) ;
 int Int32GetDatum (int) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int PointerGetDatum (char const*) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache3 (int ,int ,int ,int ) ;
 scalar_t__ is_encoding_supported_by_icu (int) ;

__attribute__((used)) static Oid
lookup_collation(const char *collname, Oid collnamespace, int32 encoding)
{
 Oid collid;
 HeapTuple colltup;
 Form_pg_collation collform;


 collid = GetSysCacheOid3(COLLNAMEENCNSP, Anum_pg_collation_oid,
        PointerGetDatum(collname),
        Int32GetDatum(encoding),
        ObjectIdGetDatum(collnamespace));
 if (OidIsValid(collid))
  return collid;







 colltup = SearchSysCache3(COLLNAMEENCNSP,
         PointerGetDatum(collname),
         Int32GetDatum(-1),
         ObjectIdGetDatum(collnamespace));
 if (!HeapTupleIsValid(colltup))
  return InvalidOid;
 collform = (Form_pg_collation) GETSTRUCT(colltup);
 if (collform->collprovider == COLLPROVIDER_ICU)
 {
  if (is_encoding_supported_by_icu(encoding))
   collid = collform->oid;
  else
   collid = InvalidOid;
 }
 else
 {
  collid = collform->oid;
 }
 ReleaseSysCache(colltup);
 return collid;
}
