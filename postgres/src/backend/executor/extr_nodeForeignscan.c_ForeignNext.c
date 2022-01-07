
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {int tts_tableOid; } ;
typedef TYPE_4__ TupleTableSlot ;
struct TYPE_21__ {int ecxt_per_tuple_memory; } ;
struct TYPE_20__ {scalar_t__ operation; scalar_t__ fsSystemCol; } ;
struct TYPE_17__ {TYPE_7__* ps_ExprContext; scalar_t__ plan; } ;
struct TYPE_16__ {int ss_currentRelation; TYPE_3__ ps; } ;
struct TYPE_19__ {TYPE_2__ ss; TYPE_1__* fdwroutine; } ;
struct TYPE_15__ {TYPE_4__* (* IterateForeignScan ) (TYPE_5__*) ;TYPE_4__* (* IterateDirectModify ) (TYPE_5__*) ;} ;
typedef int MemoryContext ;
typedef TYPE_5__ ForeignScanState ;
typedef TYPE_6__ ForeignScan ;
typedef TYPE_7__ ExprContext ;


 scalar_t__ CMD_SELECT ;
 int MemoryContextSwitchTo (int ) ;
 int RelationGetRelid (int ) ;
 int TupIsNull (TYPE_4__*) ;
 TYPE_4__* stub1 (TYPE_5__*) ;
 TYPE_4__* stub2 (TYPE_5__*) ;

__attribute__((used)) static TupleTableSlot *
ForeignNext(ForeignScanState *node)
{
 TupleTableSlot *slot;
 ForeignScan *plan = (ForeignScan *) node->ss.ps.plan;
 ExprContext *econtext = node->ss.ps.ps_ExprContext;
 MemoryContext oldcontext;


 oldcontext = MemoryContextSwitchTo(econtext->ecxt_per_tuple_memory);
 if (plan->operation != CMD_SELECT)
  slot = node->fdwroutine->IterateDirectModify(node);
 else
  slot = node->fdwroutine->IterateForeignScan(node);
 MemoryContextSwitchTo(oldcontext);





 if (plan->fsSystemCol && !TupIsNull(slot))
  slot->tts_tableOid = RelationGetRelid(node->ss.ss_currentRelation);

 return slot;
}
