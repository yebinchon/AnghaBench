
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ expr; } ;
typedef TYPE_1__ TargetEntry ;
struct TYPE_18__ {scalar_t__ verbose; int rtable; int deparse_cxt; } ;
struct TYPE_17__ {int targetlist; } ;
struct TYPE_16__ {TYPE_4__* plan; } ;
struct TYPE_15__ {int data; } ;
typedef TYPE_2__ StringInfoData ;
typedef TYPE_3__ PlanState ;
typedef TYPE_4__ Plan ;
typedef int Oid ;
typedef int Node ;
typedef int List ;
typedef TYPE_5__ ExplainState ;
typedef int AttrNumber ;


 int ERROR ;
 int ExplainPropertyList (char const*,int *,TYPE_5__*) ;
 int * NIL ;
 int appendStringInfoString (TYPE_2__*,char*) ;
 char* deparse_expression (int *,int *,int,int) ;
 int elog (int ,char*,int ) ;
 TYPE_1__* get_tle_by_resno (int ,int ) ;
 int initStringInfo (TYPE_2__*) ;
 int * lappend (int *,int ) ;
 int list_length (int ) ;
 int pstrdup (int ) ;
 int resetStringInfo (TYPE_2__*) ;
 int * set_deparse_context_planstate (int ,int *,int *) ;
 int show_sortorder_options (TYPE_2__*,int *,int ,int ,int) ;

__attribute__((used)) static void
show_sort_group_keys(PlanState *planstate, const char *qlabel,
      int nkeys, AttrNumber *keycols,
      Oid *sortOperators, Oid *collations, bool *nullsFirst,
      List *ancestors, ExplainState *es)
{
 Plan *plan = planstate->plan;
 List *context;
 List *result = NIL;
 StringInfoData sortkeybuf;
 bool useprefix;
 int keyno;

 if (nkeys <= 0)
  return;

 initStringInfo(&sortkeybuf);


 context = set_deparse_context_planstate(es->deparse_cxt,
           (Node *) planstate,
           ancestors);
 useprefix = (list_length(es->rtable) > 1 || es->verbose);

 for (keyno = 0; keyno < nkeys; keyno++)
 {

  AttrNumber keyresno = keycols[keyno];
  TargetEntry *target = get_tle_by_resno(plan->targetlist,
              keyresno);
  char *exprstr;

  if (!target)
   elog(ERROR, "no tlist entry for key %d", keyresno);

  exprstr = deparse_expression((Node *) target->expr, context,
          useprefix, 1);
  resetStringInfo(&sortkeybuf);
  appendStringInfoString(&sortkeybuf, exprstr);

  if (sortOperators != ((void*)0))
   show_sortorder_options(&sortkeybuf,
           (Node *) target->expr,
           sortOperators[keyno],
           collations[keyno],
           nullsFirst[keyno]);

  result = lappend(result, pstrdup(sortkeybuf.data));
 }

 ExplainPropertyList(qlabel, result, es);
}
