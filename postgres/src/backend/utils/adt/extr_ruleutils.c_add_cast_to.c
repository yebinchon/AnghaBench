
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int typnamespace; int typname; } ;
typedef int StringInfo ;
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
 int appendStringInfo (int ,char*,int ,int ) ;
 int elog (int ,char*,int ) ;
 char* get_namespace_name (int ) ;
 int quote_identifier (char*) ;

__attribute__((used)) static void
add_cast_to(StringInfo buf, Oid typid)
{
 HeapTuple typetup;
 Form_pg_type typform;
 char *typname;
 char *nspname;

 typetup = SearchSysCache1(TYPEOID, ObjectIdGetDatum(typid));
 if (!HeapTupleIsValid(typetup))
  elog(ERROR, "cache lookup failed for type %u", typid);
 typform = (Form_pg_type) GETSTRUCT(typetup);

 typname = NameStr(typform->typname);
 nspname = get_namespace_name(typform->typnamespace);

 appendStringInfo(buf, "::%s.%s",
      quote_identifier(nspname), quote_identifier(typname));

 ReleaseSysCache(typetup);
}
