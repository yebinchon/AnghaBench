
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int tts_tableOid; } ;
typedef TYPE_1__ TupleTableSlot ;
struct TYPE_14__ {TYPE_1__* ecxt_scantuple; TYPE_1__* ecxt_outertuple; } ;
struct TYPE_13__ {TYPE_4__* pi_exprContext; } ;
struct TYPE_12__ {int ri_RelationDesc; TYPE_3__* ri_projectReturning; } ;
typedef TYPE_2__ ResultRelInfo ;
typedef TYPE_3__ ProjectionInfo ;
typedef TYPE_4__ ExprContext ;


 TYPE_1__* ExecProject (TYPE_3__*) ;
 int RelationGetRelid (int ) ;

__attribute__((used)) static TupleTableSlot *
ExecProcessReturning(ResultRelInfo *resultRelInfo,
      TupleTableSlot *tupleSlot,
      TupleTableSlot *planSlot)
{
 ProjectionInfo *projectReturning = resultRelInfo->ri_projectReturning;
 ExprContext *econtext = projectReturning->pi_exprContext;


 if (tupleSlot)
  econtext->ecxt_scantuple = tupleSlot;
 econtext->ecxt_outertuple = planSlot;





 econtext->ecxt_scantuple->tts_tableOid =
  RelationGetRelid(resultRelInfo->ri_RelationDesc);


 return ExecProject(projectReturning);
}
