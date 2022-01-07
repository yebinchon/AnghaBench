
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_8__ {int * ecxt_scantuple; } ;
struct TYPE_7__ {int * ri_PartitionCheckExpr; int * ri_PartitionCheck; } ;
typedef TYPE_1__ ResultRelInfo ;
typedef int List ;
typedef TYPE_2__ ExprContext ;
typedef int EState ;


 int ExecCheck (int *,TYPE_2__*) ;
 int ExecPartitionCheckEmitError (TYPE_1__*,int *,int *) ;
 int * ExecPrepareCheck (int *,int *) ;
 TYPE_2__* GetPerTupleExprContext (int *) ;

bool
ExecPartitionCheck(ResultRelInfo *resultRelInfo, TupleTableSlot *slot,
       EState *estate, bool emitError)
{
 ExprContext *econtext;
 bool success;






 if (resultRelInfo->ri_PartitionCheckExpr == ((void*)0))
 {
  List *qual = resultRelInfo->ri_PartitionCheck;

  resultRelInfo->ri_PartitionCheckExpr = ExecPrepareCheck(qual, estate);
 }





 econtext = GetPerTupleExprContext(estate);


 econtext->ecxt_scantuple = slot;





 success = ExecCheck(resultRelInfo->ri_PartitionCheckExpr, econtext);


 if (!success && emitError)
  ExecPartitionCheckEmitError(resultRelInfo, slot, estate);

 return success;
}
