
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ opcnamespace; int opcmethod; int opcname; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_opclass ;


 int CLAOID ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 char* NameStr (int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OpclassnameGetOpcid (int ,char*) ;
 scalar_t__ PG_CATALOG_NAMESPACE ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int activeSearchPath ;
 int elog (int ,char*,scalar_t__) ;
 int list_member_oid (int ,scalar_t__) ;
 int recomputeNamespacePath () ;

bool
OpclassIsVisible(Oid opcid)
{
 HeapTuple opctup;
 Form_pg_opclass opcform;
 Oid opcnamespace;
 bool visible;

 opctup = SearchSysCache1(CLAOID, ObjectIdGetDatum(opcid));
 if (!HeapTupleIsValid(opctup))
  elog(ERROR, "cache lookup failed for opclass %u", opcid);
 opcform = (Form_pg_opclass) GETSTRUCT(opctup);

 recomputeNamespacePath();






 opcnamespace = opcform->opcnamespace;
 if (opcnamespace != PG_CATALOG_NAMESPACE &&
  !list_member_oid(activeSearchPath, opcnamespace))
  visible = 0;
 else
 {






  char *opcname = NameStr(opcform->opcname);

  visible = (OpclassnameGetOpcid(opcform->opcmethod, opcname) == opcid);
 }

 ReleaseSysCache(opctup);

 return visible;
}
