
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_6__ {int ps_ProjInfo; int qual; int * ps_ExprContext; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;
struct TYPE_8__ {TYPE_2__ ss; } ;
typedef int ExprContext ;
typedef TYPE_3__ AggState ;


 int * ExecProject (int ) ;
 scalar_t__ ExecQual (int ,int *) ;
 int InstrCountFiltered1 (TYPE_3__*,int) ;

__attribute__((used)) static TupleTableSlot *
project_aggregates(AggState *aggstate)
{
 ExprContext *econtext = aggstate->ss.ps.ps_ExprContext;




 if (ExecQual(aggstate->ss.ps.qual, econtext))
 {




  return ExecProject(aggstate->ss.ps.ps_ProjInfo);
 }
 else
  InstrCountFiltered1(aggstate, 1);

 return ((void*)0);
}
