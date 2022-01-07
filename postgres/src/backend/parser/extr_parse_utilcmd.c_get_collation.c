
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int collname; int collnamespace; } ;
typedef scalar_t__ Oid ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_collation ;


 int COLLOID ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int * NIL ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int OidIsValid (scalar_t__) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,scalar_t__) ;
 char* get_namespace_name (int ) ;
 scalar_t__ get_typcollation (scalar_t__) ;
 int * list_make2 (int ,int ) ;
 int makeString (char*) ;
 char* pstrdup (int ) ;

__attribute__((used)) static List *
get_collation(Oid collation, Oid actual_datatype)
{
 List *result;
 HeapTuple ht_coll;
 Form_pg_collation coll_rec;
 char *nsp_name;
 char *coll_name;

 if (!OidIsValid(collation))
  return NIL;
 if (collation == get_typcollation(actual_datatype))
  return NIL;

 ht_coll = SearchSysCache1(COLLOID, ObjectIdGetDatum(collation));
 if (!HeapTupleIsValid(ht_coll))
  elog(ERROR, "cache lookup failed for collation %u", collation);
 coll_rec = (Form_pg_collation) GETSTRUCT(ht_coll);


 nsp_name = get_namespace_name(coll_rec->collnamespace);
 coll_name = pstrdup(NameStr(coll_rec->collname));
 result = list_make2(makeString(nsp_name), makeString(coll_name));

 ReleaseSysCache(ht_coll);
 return result;
}
