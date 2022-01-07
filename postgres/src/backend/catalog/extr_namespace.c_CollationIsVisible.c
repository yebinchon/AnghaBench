
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ collnamespace; int collname; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_collation ;


 int COLLOID ;
 scalar_t__ CollationGetCollid (char*) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 char* NameStr (int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ PG_CATALOG_NAMESPACE ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int activeSearchPath ;
 int elog (int ,char*,scalar_t__) ;
 int list_member_oid (int ,scalar_t__) ;
 int recomputeNamespacePath () ;

bool
CollationIsVisible(Oid collid)
{
 HeapTuple colltup;
 Form_pg_collation collform;
 Oid collnamespace;
 bool visible;

 colltup = SearchSysCache1(COLLOID, ObjectIdGetDatum(collid));
 if (!HeapTupleIsValid(colltup))
  elog(ERROR, "cache lookup failed for collation %u", collid);
 collform = (Form_pg_collation) GETSTRUCT(colltup);

 recomputeNamespacePath();






 collnamespace = collform->collnamespace;
 if (collnamespace != PG_CATALOG_NAMESPACE &&
  !list_member_oid(activeSearchPath, collnamespace))
  visible = 0;
 else
 {







  char *collname = NameStr(collform->collname);

  visible = (CollationGetCollid(collname) == collid);
 }

 ReleaseSysCache(colltup);

 return visible;
}
