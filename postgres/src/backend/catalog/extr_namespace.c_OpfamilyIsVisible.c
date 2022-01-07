
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ opfnamespace; int opfmethod; int opfname; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_opfamily ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 char* NameStr (int ) ;
 int OPFAMILYOID ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OpfamilynameGetOpfid (int ,char*) ;
 scalar_t__ PG_CATALOG_NAMESPACE ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int activeSearchPath ;
 int elog (int ,char*,scalar_t__) ;
 int list_member_oid (int ,scalar_t__) ;
 int recomputeNamespacePath () ;

bool
OpfamilyIsVisible(Oid opfid)
{
 HeapTuple opftup;
 Form_pg_opfamily opfform;
 Oid opfnamespace;
 bool visible;

 opftup = SearchSysCache1(OPFAMILYOID, ObjectIdGetDatum(opfid));
 if (!HeapTupleIsValid(opftup))
  elog(ERROR, "cache lookup failed for opfamily %u", opfid);
 opfform = (Form_pg_opfamily) GETSTRUCT(opftup);

 recomputeNamespacePath();






 opfnamespace = opfform->opfnamespace;
 if (opfnamespace != PG_CATALOG_NAMESPACE &&
  !list_member_oid(activeSearchPath, opfnamespace))
  visible = 0;
 else
 {






  char *opfname = NameStr(opfform->opfname);

  visible = (OpfamilynameGetOpfid(opfform->opfmethod, opfname) == opfid);
 }

 ReleaseSysCache(opftup);

 return visible;
}
