
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_5__ {int ps; TYPE_1__* ss_ScanTupleSlot; } ;
struct TYPE_4__ {int tts_tupleDescriptor; } ;
typedef TYPE_2__ ScanState ;
typedef int Index ;


 int ExecConditionalAssignProjectionInfo (int *,int ,int ) ;

void
ExecAssignScanProjectionInfoWithVarno(ScanState *node, Index varno)
{
 TupleDesc tupdesc = node->ss_ScanTupleSlot->tts_tupleDescriptor;

 ExecConditionalAssignProjectionInfo(&node->ps, tupdesc, varno);
}
