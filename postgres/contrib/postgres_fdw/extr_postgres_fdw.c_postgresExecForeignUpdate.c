
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleTableSlot ;
typedef int ResultRelInfo ;
typedef int EState ;


 int CMD_UPDATE ;
 int * execute_foreign_modify (int *,int *,int ,int *,int *) ;

__attribute__((used)) static TupleTableSlot *
postgresExecForeignUpdate(EState *estate,
        ResultRelInfo *resultRelInfo,
        TupleTableSlot *slot,
        TupleTableSlot *planSlot)
{
 return execute_foreign_modify(estate, resultRelInfo, CMD_UPDATE,
          slot, planSlot);
}
