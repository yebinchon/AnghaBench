
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ oprnamespace; int oprright; int oprleft; int oprname; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_operator ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 char* NameStr (int ) ;
 int OPEROID ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OpernameGetOprid (int ,int ,int ) ;
 scalar_t__ PG_CATALOG_NAMESPACE ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int activeSearchPath ;
 int elog (int ,char*,scalar_t__) ;
 int list_make1 (int ) ;
 int list_member_oid (int ,scalar_t__) ;
 int makeString (char*) ;
 int recomputeNamespacePath () ;

bool
OperatorIsVisible(Oid oprid)
{
 HeapTuple oprtup;
 Form_pg_operator oprform;
 Oid oprnamespace;
 bool visible;

 oprtup = SearchSysCache1(OPEROID, ObjectIdGetDatum(oprid));
 if (!HeapTupleIsValid(oprtup))
  elog(ERROR, "cache lookup failed for operator %u", oprid);
 oprform = (Form_pg_operator) GETSTRUCT(oprtup);

 recomputeNamespacePath();






 oprnamespace = oprform->oprnamespace;
 if (oprnamespace != PG_CATALOG_NAMESPACE &&
  !list_member_oid(activeSearchPath, oprnamespace))
  visible = 0;
 else
 {






  char *oprname = NameStr(oprform->oprname);

  visible = (OpernameGetOprid(list_make1(makeString(oprname)),
         oprform->oprleft, oprform->oprright)
       == oprid);
 }

 ReleaseSysCache(oprtup);

 return visible;
}
