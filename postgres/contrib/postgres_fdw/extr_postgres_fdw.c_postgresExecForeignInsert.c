
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_6__ {struct TYPE_6__* aux_fmstate; } ;
struct TYPE_5__ {TYPE_2__* ri_FdwState; } ;
typedef TYPE_1__ ResultRelInfo ;
typedef TYPE_2__ PgFdwModifyState ;
typedef int EState ;


 int CMD_INSERT ;
 int * execute_foreign_modify (int *,TYPE_1__*,int ,int *,int *) ;

__attribute__((used)) static TupleTableSlot *
postgresExecForeignInsert(EState *estate,
        ResultRelInfo *resultRelInfo,
        TupleTableSlot *slot,
        TupleTableSlot *planSlot)
{
 PgFdwModifyState *fmstate = (PgFdwModifyState *) resultRelInfo->ri_FdwState;
 TupleTableSlot *rslot;





 if (fmstate->aux_fmstate)
  resultRelInfo->ri_FdwState = fmstate->aux_fmstate;
 rslot = execute_foreign_modify(estate, resultRelInfo, CMD_INSERT,
           slot, planSlot);

 if (fmstate->aux_fmstate)
  resultRelInfo->ri_FdwState = fmstate;

 return rslot;
}
