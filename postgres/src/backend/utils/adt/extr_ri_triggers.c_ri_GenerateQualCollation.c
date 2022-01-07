
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int collnamespace; int collname; } ;
typedef int StringInfo ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_collation ;


 int COLLOID ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int MAX_QUOTED_NAME_LEN ;
 char* NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int appendStringInfo (int ,char*,char*) ;
 int elog (int ,char*,int ) ;
 char* get_namespace_name (int ) ;
 int quoteOneName (char*,char*) ;

__attribute__((used)) static void
ri_GenerateQualCollation(StringInfo buf, Oid collation)
{
 HeapTuple tp;
 Form_pg_collation colltup;
 char *collname;
 char onename[MAX_QUOTED_NAME_LEN];


 if (!OidIsValid(collation))
  return;

 tp = SearchSysCache1(COLLOID, ObjectIdGetDatum(collation));
 if (!HeapTupleIsValid(tp))
  elog(ERROR, "cache lookup failed for collation %u", collation);
 colltup = (Form_pg_collation) GETSTRUCT(tp);
 collname = NameStr(colltup->collname);





 quoteOneName(onename, get_namespace_name(colltup->collnamespace));
 appendStringInfo(buf, " COLLATE %s", onename);
 quoteOneName(onename, collname);
 appendStringInfo(buf, ".%s", onename);

 ReleaseSysCache(tp);
}
