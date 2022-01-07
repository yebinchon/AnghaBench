
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int tts_isnull; int tts_values; } ;
typedef TYPE_2__ TupleTableSlot ;
struct TYPE_15__ {struct TYPE_15__* previous; void* arg; int callback; } ;
struct TYPE_14__ {scalar_t__ cstate; } ;
struct TYPE_11__ {TYPE_2__* ss_ScanTupleSlot; } ;
struct TYPE_13__ {TYPE_1__ ss; scalar_t__ fdw_state; } ;
typedef TYPE_3__ ForeignScanState ;
typedef TYPE_4__ FileFdwExecutionState ;
typedef TYPE_5__ ErrorContextCallback ;


 int CopyFromErrorCallback ;
 int ExecClearTuple (TYPE_2__*) ;
 int ExecStoreVirtualTuple (TYPE_2__*) ;
 int NextCopyFrom (scalar_t__,int *,int ,int ) ;
 TYPE_5__* error_context_stack ;

__attribute__((used)) static TupleTableSlot *
fileIterateForeignScan(ForeignScanState *node)
{
 FileFdwExecutionState *festate = (FileFdwExecutionState *) node->fdw_state;
 TupleTableSlot *slot = node->ss.ss_ScanTupleSlot;
 bool found;
 ErrorContextCallback errcallback;


 errcallback.callback = CopyFromErrorCallback;
 errcallback.arg = (void *) festate->cstate;
 errcallback.previous = error_context_stack;
 error_context_stack = &errcallback;
 ExecClearTuple(slot);
 found = NextCopyFrom(festate->cstate, ((void*)0),
       slot->tts_values, slot->tts_isnull);
 if (found)
  ExecStoreVirtualTuple(slot);


 error_context_stack = errcallback.previous;

 return slot;
}
