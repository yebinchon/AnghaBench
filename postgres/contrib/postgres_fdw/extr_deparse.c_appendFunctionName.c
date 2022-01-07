
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buf; } ;
typedef TYPE_1__ deparse_expr_cxt ;
struct TYPE_5__ {scalar_t__ pronamespace; int proname; } ;
typedef int StringInfo ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_proc ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 char* NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ PG_CATALOG_NAMESPACE ;
 int PROCOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int appendStringInfo (int ,char*,int ) ;
 int appendStringInfoString (int ,int ) ;
 int elog (int ,char*,int ) ;
 char* get_namespace_name (scalar_t__) ;
 int quote_identifier (char const*) ;

__attribute__((used)) static void
appendFunctionName(Oid funcid, deparse_expr_cxt *context)
{
 StringInfo buf = context->buf;
 HeapTuple proctup;
 Form_pg_proc procform;
 const char *proname;

 proctup = SearchSysCache1(PROCOID, ObjectIdGetDatum(funcid));
 if (!HeapTupleIsValid(proctup))
  elog(ERROR, "cache lookup failed for function %u", funcid);
 procform = (Form_pg_proc) GETSTRUCT(proctup);


 if (procform->pronamespace != PG_CATALOG_NAMESPACE)
 {
  const char *schemaname;

  schemaname = get_namespace_name(procform->pronamespace);
  appendStringInfo(buf, "%s.", quote_identifier(schemaname));
 }


 proname = NameStr(procform->proname);
 appendStringInfoString(buf, quote_identifier(proname));

 ReleaseSysCache(proctup);
}
