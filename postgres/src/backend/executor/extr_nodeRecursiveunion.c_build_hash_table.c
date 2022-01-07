
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_10__ {TYPE_1__* state; scalar_t__ plan; } ;
struct TYPE_9__ {scalar_t__ numCols; scalar_t__ numGroups; int dupCollations; int dupColIdx; } ;
struct TYPE_8__ {int tempContext; int tableContext; TYPE_6__ ps; int hashfunctions; int eqfuncoids; int hashtable; } ;
struct TYPE_7__ {int es_query_cxt; } ;
typedef TYPE_2__ RecursiveUnionState ;
typedef TYPE_3__ RecursiveUnion ;


 int Assert (int) ;
 int BuildTupleHashTableExt (TYPE_6__*,int ,scalar_t__,int ,int ,int ,int ,scalar_t__,int ,int ,int ,int ,int) ;
 int ExecGetResultType (int ) ;
 int outerPlanState (TYPE_2__*) ;

__attribute__((used)) static void
build_hash_table(RecursiveUnionState *rustate)
{
 RecursiveUnion *node = (RecursiveUnion *) rustate->ps.plan;
 TupleDesc desc = ExecGetResultType(outerPlanState(rustate));

 Assert(node->numCols > 0);
 Assert(node->numGroups > 0);

 rustate->hashtable = BuildTupleHashTableExt(&rustate->ps,
            desc,
            node->numCols,
            node->dupColIdx,
            rustate->eqfuncoids,
            rustate->hashfunctions,
            node->dupCollations,
            node->numGroups,
            0,
            rustate->ps.state->es_query_cxt,
            rustate->tableContext,
            rustate->tempContext,
            0);
}
