
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int values; } ;
struct TYPE_7__ {scalar_t__ pronamespace; int pronargs; TYPE_1__ proargtypes; int proname; } ;
struct TYPE_6__ {scalar_t__ oid; int args; struct TYPE_6__* next; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_2__* FuncCandidateList ;
typedef TYPE_3__* Form_pg_proc ;


 int ERROR ;
 TYPE_2__* FuncnameGetCandidates (int ,int,int ,int,int,int) ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int NIL ;
 char* NameStr (int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ PG_CATALOG_NAMESPACE ;
 int PROCOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int activeSearchPath ;
 int elog (int ,char*,scalar_t__) ;
 int list_make1 (int ) ;
 int list_member_oid (int ,scalar_t__) ;
 int makeString (char*) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int recomputeNamespacePath () ;

bool
FunctionIsVisible(Oid funcid)
{
 HeapTuple proctup;
 Form_pg_proc procform;
 Oid pronamespace;
 bool visible;

 proctup = SearchSysCache1(PROCOID, ObjectIdGetDatum(funcid));
 if (!HeapTupleIsValid(proctup))
  elog(ERROR, "cache lookup failed for function %u", funcid);
 procform = (Form_pg_proc) GETSTRUCT(proctup);

 recomputeNamespacePath();






 pronamespace = procform->pronamespace;
 if (pronamespace != PG_CATALOG_NAMESPACE &&
  !list_member_oid(activeSearchPath, pronamespace))
  visible = 0;
 else
 {






  char *proname = NameStr(procform->proname);
  int nargs = procform->pronargs;
  FuncCandidateList clist;

  visible = 0;

  clist = FuncnameGetCandidates(list_make1(makeString(proname)),
           nargs, NIL, 0, 0, 0);

  for (; clist; clist = clist->next)
  {
   if (memcmp(clist->args, procform->proargtypes.values,
        nargs * sizeof(Oid)) == 0)
   {

    visible = (clist->oid == funcid);
    break;
   }
  }
 }

 ReleaseSysCache(proctup);

 return visible;
}
