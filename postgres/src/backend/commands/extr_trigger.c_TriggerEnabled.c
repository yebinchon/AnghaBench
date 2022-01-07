
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int TupleTableSlot ;
typedef int TriggerEvent ;
struct TYPE_14__ {scalar_t__ tgenabled; scalar_t__ tgnattr; int tgqual; scalar_t__* tgattr; } ;
typedef TYPE_2__ Trigger ;
struct TYPE_17__ {int es_query_cxt; } ;
struct TYPE_16__ {int * ecxt_outertuple; int * ecxt_innertuple; } ;
struct TYPE_15__ {int ** ri_TrigWhenExprs; TYPE_1__* ri_TrigDesc; } ;
struct TYPE_13__ {TYPE_2__* triggers; } ;
typedef TYPE_3__ ResultRelInfo ;
typedef int Node ;
typedef int MemoryContext ;
typedef int List ;
typedef int ExprState ;
typedef TYPE_4__ ExprContext ;
typedef int Expr ;
typedef TYPE_5__ EState ;
typedef int Bitmapset ;


 int Assert (int ) ;
 int ChangeVarNodes (int *,int ,int ,int ) ;
 int * ExecPrepareQual (int *,TYPE_5__*) ;
 int ExecQual (int *,TYPE_4__*) ;
 scalar_t__ FirstLowInvalidHeapAttributeNumber ;
 TYPE_4__* GetPerTupleExprContext (TYPE_5__*) ;
 int INNER_VAR ;
 int MemoryContextSwitchTo (int ) ;
 int OUTER_VAR ;
 int PRS2_NEW_VARNO ;
 int PRS2_OLD_VARNO ;
 scalar_t__ SESSION_REPLICATION_ROLE_REPLICA ;
 scalar_t__ SessionReplicationRole ;
 scalar_t__ TRIGGER_DISABLED ;
 scalar_t__ TRIGGER_FIRED_BY_UPDATE (int ) ;
 scalar_t__ TRIGGER_FIRES_ON_ORIGIN ;
 scalar_t__ TRIGGER_FIRES_ON_REPLICA ;
 scalar_t__ bms_is_member (scalar_t__,int *) ;
 scalar_t__ make_ands_implicit (int *) ;
 int * stringToNode (int ) ;

__attribute__((used)) static bool
TriggerEnabled(EState *estate, ResultRelInfo *relinfo,
      Trigger *trigger, TriggerEvent event,
      Bitmapset *modifiedCols,
      TupleTableSlot *oldslot, TupleTableSlot *newslot)
{

 if (SessionReplicationRole == SESSION_REPLICATION_ROLE_REPLICA)
 {
  if (trigger->tgenabled == TRIGGER_FIRES_ON_ORIGIN ||
   trigger->tgenabled == TRIGGER_DISABLED)
   return 0;
 }
 else
 {
  if (trigger->tgenabled == TRIGGER_FIRES_ON_REPLICA ||
   trigger->tgenabled == TRIGGER_DISABLED)
   return 0;
 }





 if (trigger->tgnattr > 0 && TRIGGER_FIRED_BY_UPDATE(event))
 {
  int i;
  bool modified;

  modified = 0;
  for (i = 0; i < trigger->tgnattr; i++)
  {
   if (bms_is_member(trigger->tgattr[i] - FirstLowInvalidHeapAttributeNumber,
         modifiedCols))
   {
    modified = 1;
    break;
   }
  }
  if (!modified)
   return 0;
 }


 if (trigger->tgqual)
 {
  ExprState **predicate;
  ExprContext *econtext;
  MemoryContext oldContext;
  int i;

  Assert(estate != ((void*)0));





  i = trigger - relinfo->ri_TrigDesc->triggers;
  predicate = &relinfo->ri_TrigWhenExprs[i];






  if (*predicate == ((void*)0))
  {
   Node *tgqual;

   oldContext = MemoryContextSwitchTo(estate->es_query_cxt);
   tgqual = stringToNode(trigger->tgqual);

   ChangeVarNodes(tgqual, PRS2_OLD_VARNO, INNER_VAR, 0);
   ChangeVarNodes(tgqual, PRS2_NEW_VARNO, OUTER_VAR, 0);

   tgqual = (Node *) make_ands_implicit((Expr *) tgqual);
   *predicate = ExecPrepareQual((List *) tgqual, estate);
   MemoryContextSwitchTo(oldContext);
  }





  econtext = GetPerTupleExprContext(estate);





  econtext->ecxt_innertuple = oldslot;
  econtext->ecxt_outertuple = newslot;
  if (!ExecQual(*predicate, econtext))
   return 0;
 }

 return 1;
}
