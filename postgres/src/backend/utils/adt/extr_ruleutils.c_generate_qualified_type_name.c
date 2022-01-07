
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int typnamespace; int typname; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_type ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 char* NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TYPEOID ;
 int elog (int ,char*,int ) ;
 char* get_namespace_name (int ) ;
 char* quote_qualified_identifier (char*,char*) ;

__attribute__((used)) static char *
generate_qualified_type_name(Oid typid)
{
 HeapTuple tp;
 Form_pg_type typtup;
 char *typname;
 char *nspname;
 char *result;

 tp = SearchSysCache1(TYPEOID, ObjectIdGetDatum(typid));
 if (!HeapTupleIsValid(tp))
  elog(ERROR, "cache lookup failed for type %u", typid);
 typtup = (Form_pg_type) GETSTRUCT(tp);
 typname = NameStr(typtup->typname);

 nspname = get_namespace_name(typtup->typnamespace);
 if (!nspname)
  elog(ERROR, "cache lookup failed for namespace %u",
    typtup->typnamespace);

 result = quote_qualified_identifier(nspname, typname);

 ReleaseSysCache(tp);

 return result;
}
