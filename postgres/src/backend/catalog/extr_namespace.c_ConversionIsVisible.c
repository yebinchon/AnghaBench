
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ connamespace; int conname; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_conversion ;


 int CONVOID ;
 scalar_t__ ConversionGetConid (char*) ;
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
ConversionIsVisible(Oid conid)
{
 HeapTuple contup;
 Form_pg_conversion conform;
 Oid connamespace;
 bool visible;

 contup = SearchSysCache1(CONVOID, ObjectIdGetDatum(conid));
 if (!HeapTupleIsValid(contup))
  elog(ERROR, "cache lookup failed for conversion %u", conid);
 conform = (Form_pg_conversion) GETSTRUCT(contup);

 recomputeNamespacePath();






 connamespace = conform->connamespace;
 if (connamespace != PG_CATALOG_NAMESPACE &&
  !list_member_oid(activeSearchPath, connamespace))
  visible = 0;
 else
 {






  char *conname = NameStr(conform->conname);

  visible = (ConversionGetConid(conname) == conid);
 }

 ReleaseSysCache(contup);

 return visible;
}
