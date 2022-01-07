
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opcname; int opcnamespace; int opcmethod; } ;
typedef scalar_t__ Oid ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_opclass ;


 int CLAOID ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ GetDefaultOpClass (scalar_t__,int ) ;
 int HeapTupleIsValid (int ) ;
 int * NIL ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,scalar_t__) ;
 char* get_namespace_name (int ) ;
 int * list_make2 (int ,int ) ;
 int makeString (char*) ;
 char* pstrdup (int ) ;

__attribute__((used)) static List *
get_opclass(Oid opclass, Oid actual_datatype)
{
 List *result = NIL;
 HeapTuple ht_opc;
 Form_pg_opclass opc_rec;

 ht_opc = SearchSysCache1(CLAOID, ObjectIdGetDatum(opclass));
 if (!HeapTupleIsValid(ht_opc))
  elog(ERROR, "cache lookup failed for opclass %u", opclass);
 opc_rec = (Form_pg_opclass) GETSTRUCT(ht_opc);

 if (GetDefaultOpClass(actual_datatype, opc_rec->opcmethod) != opclass)
 {

  char *nsp_name = get_namespace_name(opc_rec->opcnamespace);
  char *opc_name = pstrdup(NameStr(opc_rec->opcname));

  result = list_make2(makeString(nsp_name), makeString(opc_name));
 }

 ReleaseSysCache(ht_opc);
 return result;
}
