
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int trig_insert_new_table; int trig_update_old_table; int trig_update_new_table; int trig_delete_old_table; } ;
typedef TYPE_1__ TriggerDesc ;
struct TYPE_9__ {int tcs_delete_old_table; int tcs_update_old_table; int tcs_update_new_table; int tcs_insert_new_table; TYPE_3__* tcs_private; } ;
typedef TYPE_2__ TransitionCaptureState ;
struct TYPE_11__ {scalar_t__ query_depth; scalar_t__ maxquerydepth; } ;
struct TYPE_10__ {int * new_tuplestore; int * old_tuplestore; } ;
typedef int ResourceOwner ;
typedef int Oid ;
typedef int MemoryContext ;
typedef int CmdType ;
typedef TYPE_3__ AfterTriggersTableData ;


 int AfterTriggerEnlargeQueryState () ;



 int CurTransactionContext ;
 int CurTransactionResourceOwner ;
 int CurrentResourceOwner ;
 int ERROR ;
 TYPE_3__* GetAfterTriggersTableData (int ,int) ;
 int MemoryContextSwitchTo (int ) ;
 TYPE_4__ afterTriggers ;
 int elog (int ,char*,...) ;
 scalar_t__ palloc0 (int) ;
 void* tuplestore_begin_heap (int,int,int ) ;
 int work_mem ;

TransitionCaptureState *
MakeTransitionCaptureState(TriggerDesc *trigdesc, Oid relid, CmdType cmdType)
{
 TransitionCaptureState *state;
 bool need_old,
    need_new;
 AfterTriggersTableData *table;
 MemoryContext oldcxt;
 ResourceOwner saveResourceOwner;

 if (trigdesc == ((void*)0))
  return ((void*)0);


 switch (cmdType)
 {
  case 129:
   need_old = 0;
   need_new = trigdesc->trig_insert_new_table;
   break;
  case 128:
   need_old = trigdesc->trig_update_old_table;
   need_new = trigdesc->trig_update_new_table;
   break;
  case 130:
   need_old = trigdesc->trig_delete_old_table;
   need_new = 0;
   break;
  default:
   elog(ERROR, "unexpected CmdType: %d", (int) cmdType);
   need_old = need_new = 0;
   break;
 }
 if (!need_old && !need_new)
  return ((void*)0);


 if (afterTriggers.query_depth < 0)
  elog(ERROR, "MakeTransitionCaptureState() called outside of query");


 if (afterTriggers.query_depth >= afterTriggers.maxquerydepth)
  AfterTriggerEnlargeQueryState();
 table = GetAfterTriggersTableData(relid, cmdType);


 oldcxt = MemoryContextSwitchTo(CurTransactionContext);
 saveResourceOwner = CurrentResourceOwner;
 CurrentResourceOwner = CurTransactionResourceOwner;

 if (need_old && table->old_tuplestore == ((void*)0))
  table->old_tuplestore = tuplestore_begin_heap(0, 0, work_mem);
 if (need_new && table->new_tuplestore == ((void*)0))
  table->new_tuplestore = tuplestore_begin_heap(0, 0, work_mem);

 CurrentResourceOwner = saveResourceOwner;
 MemoryContextSwitchTo(oldcxt);


 state = (TransitionCaptureState *) palloc0(sizeof(TransitionCaptureState));
 state->tcs_delete_old_table = trigdesc->trig_delete_old_table;
 state->tcs_update_old_table = trigdesc->trig_update_old_table;
 state->tcs_update_new_table = trigdesc->trig_update_new_table;
 state->tcs_insert_new_table = trigdesc->trig_insert_new_table;
 state->tcs_private = table;

 return state;
}
