
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int relnamespace; int relname; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_class ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 char* NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 char* get_namespace_name (int ) ;
 char* quote_qualified_identifier (char*,char*) ;

__attribute__((used)) static char *
generate_qualified_relation_name(Oid relid)
{
 HeapTuple tp;
 Form_pg_class reltup;
 char *relname;
 char *nspname;
 char *result;

 tp = SearchSysCache1(RELOID, ObjectIdGetDatum(relid));
 if (!HeapTupleIsValid(tp))
  elog(ERROR, "cache lookup failed for relation %u", relid);
 reltup = (Form_pg_class) GETSTRUCT(tp);
 relname = NameStr(reltup->relname);

 nspname = get_namespace_name(reltup->relnamespace);
 if (!nspname)
  elog(ERROR, "cache lookup failed for namespace %u",
    reltup->relnamespace);

 result = quote_qualified_identifier(nspname, relname);

 ReleaseSysCache(tp);

 return result;
}
