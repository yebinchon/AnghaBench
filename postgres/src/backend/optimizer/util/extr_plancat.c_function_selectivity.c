
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_join; int varRelid; int selectivity; int * sjinfo; int jointype; void* inputcollid; int * args; void* funcid; int * root; int type; } ;
typedef TYPE_1__ SupportRequestSelectivity ;
typedef int SpecialJoinInfo ;
typedef int Selectivity ;
typedef int RegProcedure ;
typedef int PlannerInfo ;
typedef void* Oid ;
typedef int List ;
typedef int JoinType ;


 scalar_t__ DatumGetPointer (int ) ;
 int ERROR ;
 int OidFunctionCall1 (int ,int ) ;
 int PointerGetDatum (TYPE_1__*) ;
 int T_SupportRequestSelectivity ;
 int elog (int ,char*,double) ;
 int get_func_support (void*) ;

Selectivity
function_selectivity(PlannerInfo *root,
      Oid funcid,
      List *args,
      Oid inputcollid,
      bool is_join,
      int varRelid,
      JoinType jointype,
      SpecialJoinInfo *sjinfo)
{
 RegProcedure prosupport = get_func_support(funcid);
 SupportRequestSelectivity req;
 SupportRequestSelectivity *sresult;
 if (!prosupport)
  return (Selectivity) 0.3333333;

 req.type = T_SupportRequestSelectivity;
 req.root = root;
 req.funcid = funcid;
 req.args = args;
 req.inputcollid = inputcollid;
 req.is_join = is_join;
 req.varRelid = varRelid;
 req.jointype = jointype;
 req.sjinfo = sjinfo;
 req.selectivity = -1;

 sresult = (SupportRequestSelectivity *)
  DatumGetPointer(OidFunctionCall1(prosupport,
           PointerGetDatum(&req)));


 if (sresult != &req)
  return (Selectivity) 0.3333333;

 if (req.selectivity < 0.0 || req.selectivity > 1.0)
  elog(ERROR, "invalid function selectivity: %f", req.selectivity);

 return (Selectivity) req.selectivity;
}
