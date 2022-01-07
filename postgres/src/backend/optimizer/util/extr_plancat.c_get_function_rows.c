
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {double prorows; int prosupport; int proretset; } ;
struct TYPE_4__ {double rows; int * node; int funcid; int * root; int type; } ;
typedef TYPE_1__ SupportRequestRows ;
typedef int PlannerInfo ;
typedef int Oid ;
typedef int Node ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_proc ;


 int Assert (int ) ;
 scalar_t__ DatumGetPointer (int ) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int OidFunctionCall1 (int ,int ) ;
 scalar_t__ OidIsValid (int ) ;
 int PROCOID ;
 int PointerGetDatum (TYPE_1__*) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int T_SupportRequestRows ;
 int elog (int ,char*,int ) ;

double
get_function_rows(PlannerInfo *root, Oid funcid, Node *node)
{
 HeapTuple proctup;
 Form_pg_proc procform;
 double result;

 proctup = SearchSysCache1(PROCOID, ObjectIdGetDatum(funcid));
 if (!HeapTupleIsValid(proctup))
  elog(ERROR, "cache lookup failed for function %u", funcid);
 procform = (Form_pg_proc) GETSTRUCT(proctup);

 Assert(procform->proretset);

 if (OidIsValid(procform->prosupport))
 {
  SupportRequestRows req;
  SupportRequestRows *sresult;

  req.type = T_SupportRequestRows;
  req.root = root;
  req.funcid = funcid;
  req.node = node;

  req.rows = 0;

  sresult = (SupportRequestRows *)
   DatumGetPointer(OidFunctionCall1(procform->prosupport,
            PointerGetDatum(&req)));

  if (sresult == &req)
  {

   ReleaseSysCache(proctup);
   return req.rows;
  }
 }


 result = procform->prorows;

 ReleaseSysCache(proctup);

 return result;
}
