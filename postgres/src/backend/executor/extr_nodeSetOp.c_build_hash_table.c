
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_12__ {TYPE_1__* state; TYPE_4__* ps_ExprContext; scalar_t__ plan; } ;
struct TYPE_11__ {int ecxt_per_tuple_memory; } ;
struct TYPE_10__ {scalar_t__ strategy; scalar_t__ numGroups; int dupCollations; int dupColIdx; int numCols; } ;
struct TYPE_9__ {int tableContext; TYPE_7__ ps; int hashfunctions; int eqfuncoids; int hashtable; } ;
struct TYPE_8__ {int es_query_cxt; } ;
typedef TYPE_2__ SetOpState ;
typedef TYPE_3__ SetOp ;
typedef TYPE_4__ ExprContext ;


 int Assert (int) ;
 int BuildTupleHashTableExt (TYPE_7__*,int ,int ,int ,int ,int ,int ,scalar_t__,int ,int ,int ,int ,int) ;
 int ExecGetResultType (int ) ;
 scalar_t__ SETOP_HASHED ;
 int outerPlanState (TYPE_2__*) ;

__attribute__((used)) static void
build_hash_table(SetOpState *setopstate)
{
 SetOp *node = (SetOp *) setopstate->ps.plan;
 ExprContext *econtext = setopstate->ps.ps_ExprContext;
 TupleDesc desc = ExecGetResultType(outerPlanState(setopstate));

 Assert(node->strategy == SETOP_HASHED);
 Assert(node->numGroups > 0);

 setopstate->hashtable = BuildTupleHashTableExt(&setopstate->ps,
               desc,
               node->numCols,
               node->dupColIdx,
               setopstate->eqfuncoids,
               setopstate->hashfunctions,
               node->dupCollations,
               node->numGroups,
               0,
               setopstate->ps.state->es_query_cxt,
               setopstate->tableContext,
               econtext->ecxt_per_tuple_memory,
               0);
}
