
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WaitEventIPC ;
__attribute__((used)) static const char *
pgstat_get_wait_ipc(WaitEventIPC w)
{
 const char *event_name = "unknown wait event";

 switch (w)
 {
  case 164:
   event_name = "BgWorkerShutdown";
   break;
  case 163:
   event_name = "BgWorkerStartup";
   break;
  case 162:
   event_name = "BtreePage";
   break;
  case 161:
   event_name = "CheckpointDone";
   break;
  case 160:
   event_name = "CheckpointStart";
   break;
  case 159:
   event_name = "ClogGroupUpdate";
   break;
  case 158:
   event_name = "ExecuteGather";
   break;
  case 157:
   event_name = "Hash/Batch/Allocating";
   break;
  case 156:
   event_name = "Hash/Batch/Electing";
   break;
  case 155:
   event_name = "Hash/Batch/Loading";
   break;
  case 154:
   event_name = "Hash/Build/Allocating";
   break;
  case 153:
   event_name = "Hash/Build/Electing";
   break;
  case 152:
   event_name = "Hash/Build/HashingInner";
   break;
  case 151:
   event_name = "Hash/Build/HashingOuter";
   break;
  case 150:
   event_name = "Hash/GrowBatches/Allocating";
   break;
  case 149:
   event_name = "Hash/GrowBatches/Deciding";
   break;
  case 148:
   event_name = "Hash/GrowBatches/Electing";
   break;
  case 147:
   event_name = "Hash/GrowBatches/Finishing";
   break;
  case 146:
   event_name = "Hash/GrowBatches/Repartitioning";
   break;
  case 145:
   event_name = "Hash/GrowBuckets/Allocating";
   break;
  case 144:
   event_name = "Hash/GrowBuckets/Electing";
   break;
  case 143:
   event_name = "Hash/GrowBuckets/Reinserting";
   break;
  case 142:
   event_name = "LogicalSyncData";
   break;
  case 141:
   event_name = "LogicalSyncStateChange";
   break;
  case 140:
   event_name = "MessageQueueInternal";
   break;
  case 139:
   event_name = "MessageQueuePutMessage";
   break;
  case 138:
   event_name = "MessageQueueReceive";
   break;
  case 137:
   event_name = "MessageQueueSend";
   break;
  case 136:
   event_name = "ParallelBitmapScan";
   break;
  case 135:
   event_name = "ParallelCreateIndexScan";
   break;
  case 134:
   event_name = "ParallelFinish";
   break;
  case 133:
   event_name = "ProcArrayGroupUpdate";
   break;
  case 132:
   event_name = "Promote";
   break;
  case 131:
   event_name = "ReplicationOriginDrop";
   break;
  case 130:
   event_name = "ReplicationSlotDrop";
   break;
  case 129:
   event_name = "SafeSnapshot";
   break;
  case 128:
   event_name = "SyncRep";
   break;

 }

 return event_name;
}
