
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int collnamespace; int collname; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_collation ;


 int COLLOID ;
 int CollationIsVisible (int ) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 char* NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 char* get_namespace_name (int ) ;
 char* quote_qualified_identifier (char*,char*) ;

char *
generate_collation_name(Oid collid)
{
 HeapTuple tp;
 Form_pg_collation colltup;
 char *collname;
 char *nspname;
 char *result;

 tp = SearchSysCache1(COLLOID, ObjectIdGetDatum(collid));
 if (!HeapTupleIsValid(tp))
  elog(ERROR, "cache lookup failed for collation %u", collid);
 colltup = (Form_pg_collation) GETSTRUCT(tp);
 collname = NameStr(colltup->collname);

 if (!CollationIsVisible(collid))
  nspname = get_namespace_name(colltup->collnamespace);
 else
  nspname = ((void*)0);

 result = quote_qualified_identifier(nspname, collname);

 ReleaseSysCache(tp);

 return result;
}
