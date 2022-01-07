
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_17__ {int es_processed; TYPE_3__* es_result_relation_info; } ;
struct TYPE_11__ {TYPE_5__* instrument; TYPE_7__* state; } ;
struct TYPE_12__ {TYPE_1__ ps; int * ss_ScanTupleSlot; } ;
struct TYPE_16__ {TYPE_2__ ss; scalar_t__ fdw_state; } ;
struct TYPE_15__ {int tuplecount; } ;
struct TYPE_14__ {int num_tuples; scalar_t__ set_processed; int has_returning; } ;
struct TYPE_13__ {int ri_projectReturning; } ;
typedef TYPE_3__ ResultRelInfo ;
typedef TYPE_4__ PgFdwDirectModifyState ;
typedef TYPE_5__ Instrumentation ;
typedef TYPE_6__ ForeignScanState ;
typedef TYPE_7__ EState ;


 int Assert (int) ;
 int * ExecClearTuple (int *) ;
 int execute_dml_stmt (TYPE_6__*) ;
 int * get_returning_data (TYPE_6__*) ;

__attribute__((used)) static TupleTableSlot *
postgresIterateDirectModify(ForeignScanState *node)
{
 PgFdwDirectModifyState *dmstate = (PgFdwDirectModifyState *) node->fdw_state;
 EState *estate = node->ss.ps.state;
 ResultRelInfo *resultRelInfo = estate->es_result_relation_info;




 if (dmstate->num_tuples == -1)
  execute_dml_stmt(node);




 if (!resultRelInfo->ri_projectReturning)
 {
  TupleTableSlot *slot = node->ss.ss_ScanTupleSlot;
  Instrumentation *instr = node->ss.ps.instrument;

  Assert(!dmstate->has_returning);


  if (dmstate->set_processed)
   estate->es_processed += dmstate->num_tuples;


  if (instr)
   instr->tuplecount += dmstate->num_tuples;

  return ExecClearTuple(slot);
 }




 return get_returning_data(node);
}
