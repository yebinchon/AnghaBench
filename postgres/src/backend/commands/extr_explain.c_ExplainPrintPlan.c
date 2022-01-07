
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_19__ {int * printed_subplans; int rtable_names; int rtable; int deparse_cxt; TYPE_1__* pstmt; } ;
struct TYPE_18__ {scalar_t__ invisible; } ;
struct TYPE_17__ {scalar_t__ plan; } ;
struct TYPE_16__ {TYPE_3__* planstate; TYPE_1__* plannedstmt; } ;
struct TYPE_15__ {int rtable; } ;
typedef TYPE_2__ QueryDesc ;
typedef TYPE_3__ PlanState ;
typedef TYPE_4__ Gather ;
typedef TYPE_5__ ExplainState ;
typedef int Bitmapset ;


 int Assert (int ) ;
 int ExplainNode (TYPE_3__*,int ,int *,int *,TYPE_5__*) ;
 int ExplainPreScanNode (TYPE_3__*,int **) ;
 int ExplainPrintSettings (TYPE_5__*) ;
 int GatherState ;
 scalar_t__ IsA (TYPE_3__*,int ) ;
 int NIL ;
 int deparse_context_for_plan_rtable (int ,int ) ;
 TYPE_3__* outerPlanState (TYPE_3__*) ;
 int select_rtable_names_for_explain (int ,int *) ;

void
ExplainPrintPlan(ExplainState *es, QueryDesc *queryDesc)
{
 Bitmapset *rels_used = ((void*)0);
 PlanState *ps;


 Assert(queryDesc->plannedstmt != ((void*)0));
 es->pstmt = queryDesc->plannedstmt;
 es->rtable = queryDesc->plannedstmt->rtable;
 ExplainPreScanNode(queryDesc->planstate, &rels_used);
 es->rtable_names = select_rtable_names_for_explain(es->rtable, rels_used);
 es->deparse_cxt = deparse_context_for_plan_rtable(es->rtable,
               es->rtable_names);
 es->printed_subplans = ((void*)0);







 ps = queryDesc->planstate;
 if (IsA(ps, GatherState) &&((Gather *) ps->plan)->invisible)
  ps = outerPlanState(ps);
 ExplainNode(ps, NIL, ((void*)0), ((void*)0), es);





 ExplainPrintSettings(es);
}
