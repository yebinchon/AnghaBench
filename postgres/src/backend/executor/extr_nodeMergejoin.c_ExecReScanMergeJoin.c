
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int * chgParam; } ;
struct TYPE_6__ {TYPE_5__* righttree; TYPE_5__* lefttree; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;
struct TYPE_8__ {int mj_MatchedOuter; int mj_MatchedInner; TYPE_2__ js; int * mj_InnerTupleSlot; int * mj_OuterTupleSlot; int mj_JoinState; int mj_MarkedTupleSlot; } ;
typedef TYPE_3__ MergeJoinState ;


 int EXEC_MJ_INITIALIZE_OUTER ;
 int ExecClearTuple (int ) ;
 int ExecReScan (TYPE_5__*) ;

void
ExecReScanMergeJoin(MergeJoinState *node)
{
 ExecClearTuple(node->mj_MarkedTupleSlot);

 node->mj_JoinState = EXEC_MJ_INITIALIZE_OUTER;
 node->mj_MatchedOuter = 0;
 node->mj_MatchedInner = 0;
 node->mj_OuterTupleSlot = ((void*)0);
 node->mj_InnerTupleSlot = ((void*)0);





 if (node->js.ps.lefttree->chgParam == ((void*)0))
  ExecReScan(node->js.ps.lefttree);
 if (node->js.ps.righttree->chgParam == ((void*)0))
  ExecReScan(node->js.ps.righttree);

}
