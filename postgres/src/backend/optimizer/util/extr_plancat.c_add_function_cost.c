
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int procost; int prosupport; } ;
struct TYPE_7__ {int per_tuple; int startup; } ;
struct TYPE_6__ {scalar_t__ per_tuple; scalar_t__ startup; int * node; int funcid; int * root; int type; } ;
typedef TYPE_1__ SupportRequestCost ;
typedef TYPE_2__ QualCost ;
typedef int PlannerInfo ;
typedef int Oid ;
typedef int Node ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_proc ;


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
 int T_SupportRequestCost ;
 int cpu_operator_cost ;
 int elog (int ,char*,int ) ;

void
add_function_cost(PlannerInfo *root, Oid funcid, Node *node,
      QualCost *cost)
{
 HeapTuple proctup;
 Form_pg_proc procform;

 proctup = SearchSysCache1(PROCOID, ObjectIdGetDatum(funcid));
 if (!HeapTupleIsValid(proctup))
  elog(ERROR, "cache lookup failed for function %u", funcid);
 procform = (Form_pg_proc) GETSTRUCT(proctup);

 if (OidIsValid(procform->prosupport))
 {
  SupportRequestCost req;
  SupportRequestCost *sresult;

  req.type = T_SupportRequestCost;
  req.root = root;
  req.funcid = funcid;
  req.node = node;


  req.startup = 0;
  req.per_tuple = 0;

  sresult = (SupportRequestCost *)
   DatumGetPointer(OidFunctionCall1(procform->prosupport,
            PointerGetDatum(&req)));

  if (sresult == &req)
  {

   cost->startup += req.startup;
   cost->per_tuple += req.per_tuple;
   ReleaseSysCache(proctup);
   return;
  }
 }


 cost->per_tuple += procform->procost * cpu_operator_cost;

 ReleaseSysCache(proctup);
}
