
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_9__ {scalar_t__ plan; } ;
struct TYPE_8__ {int scanrelid; } ;
struct TYPE_7__ {TYPE_4__ ps; TYPE_1__* ss_ScanTupleSlot; } ;
struct TYPE_6__ {int tts_tupleDescriptor; } ;
typedef TYPE_2__ ScanState ;
typedef TYPE_3__ Scan ;


 int ExecConditionalAssignProjectionInfo (TYPE_4__*,int ,int ) ;

void
ExecAssignScanProjectionInfo(ScanState *node)
{
 Scan *scan = (Scan *) node->ps.plan;
 TupleDesc tupdesc = node->ss_ScanTupleSlot->tts_tupleDescriptor;

 ExecConditionalAssignProjectionInfo(&node->ps, tupdesc, scan->scanrelid);
}
