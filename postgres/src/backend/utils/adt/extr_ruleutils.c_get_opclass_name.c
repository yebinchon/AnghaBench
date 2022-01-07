
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opcnamespace; int opcname; int opcmethod; } ;
typedef int StringInfo ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_opclass ;


 int CLAOID ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ GetDefaultOpClass (scalar_t__,int ) ;
 int HeapTupleIsValid (int ) ;
 char* NameStr (int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int OidIsValid (scalar_t__) ;
 scalar_t__ OpclassIsVisible (scalar_t__) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int appendStringInfo (int ,char*,int ,...) ;
 int elog (int ,char*,scalar_t__) ;
 char* get_namespace_name (int ) ;
 int quote_identifier (char*) ;

__attribute__((used)) static void
get_opclass_name(Oid opclass, Oid actual_datatype,
     StringInfo buf)
{
 HeapTuple ht_opc;
 Form_pg_opclass opcrec;
 char *opcname;
 char *nspname;

 ht_opc = SearchSysCache1(CLAOID, ObjectIdGetDatum(opclass));
 if (!HeapTupleIsValid(ht_opc))
  elog(ERROR, "cache lookup failed for opclass %u", opclass);
 opcrec = (Form_pg_opclass) GETSTRUCT(ht_opc);

 if (!OidIsValid(actual_datatype) ||
  GetDefaultOpClass(actual_datatype, opcrec->opcmethod) != opclass)
 {

  opcname = NameStr(opcrec->opcname);
  if (OpclassIsVisible(opclass))
   appendStringInfo(buf, " %s", quote_identifier(opcname));
  else
  {
   nspname = get_namespace_name(opcrec->opcnamespace);
   appendStringInfo(buf, " %s.%s",
        quote_identifier(nspname),
        quote_identifier(opcname));
  }
 }
 ReleaseSysCache(ht_opc);
}
