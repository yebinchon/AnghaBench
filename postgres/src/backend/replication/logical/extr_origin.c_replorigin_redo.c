
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int force; int remote_lsn; int node_id; } ;
typedef TYPE_1__ xl_replorigin_set ;
struct TYPE_10__ {int node_id; } ;
typedef TYPE_2__ xl_replorigin_drop ;
typedef int uint8 ;
struct TYPE_11__ {int EndRecPtr; } ;
typedef TYPE_3__ XLogReaderState ;
struct TYPE_12__ {void* local_lsn; void* remote_lsn; int roident; } ;
typedef TYPE_4__ ReplicationState ;


 int InvalidRepOriginId ;
 void* InvalidXLogRecPtr ;
 int PANIC ;


 int XLR_INFO_MASK ;
 scalar_t__ XLogRecGetData (TYPE_3__*) ;
 int XLogRecGetInfo (TYPE_3__*) ;
 int elog (int ,char*,int) ;
 int max_replication_slots ;
 TYPE_4__* replication_states ;
 int replorigin_advance (int ,int ,int ,int ,int) ;

void
replorigin_redo(XLogReaderState *record)
{
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;

 switch (info)
 {
  case 128:
   {
    xl_replorigin_set *xlrec =
    (xl_replorigin_set *) XLogRecGetData(record);

    replorigin_advance(xlrec->node_id,
           xlrec->remote_lsn, record->EndRecPtr,
           xlrec->force ,
           0 );
    break;
   }
  case 129:
   {
    xl_replorigin_drop *xlrec;
    int i;

    xlrec = (xl_replorigin_drop *) XLogRecGetData(record);

    for (i = 0; i < max_replication_slots; i++)
    {
     ReplicationState *state = &replication_states[i];


     if (state->roident == xlrec->node_id)
     {

      state->roident = InvalidRepOriginId;
      state->remote_lsn = InvalidXLogRecPtr;
      state->local_lsn = InvalidXLogRecPtr;
      break;
     }
    }
    break;
   }
  default:
   elog(PANIC, "replorigin_redo: unknown op code %u", info);
 }
}
