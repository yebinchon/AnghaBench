
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* ckpt_sync_end_t; void* ckpt_sync_t; void* ckpt_write_t; } ;


 int BufferSync (int) ;
 TYPE_1__ CheckpointStats ;
 void* GetCurrentTimestamp () ;
 int ProcessSyncRequests () ;
 int TRACE_POSTGRESQL_BUFFER_CHECKPOINT_DONE () ;
 int TRACE_POSTGRESQL_BUFFER_CHECKPOINT_START (int) ;
 int TRACE_POSTGRESQL_BUFFER_CHECKPOINT_SYNC_START () ;

void
CheckPointBuffers(int flags)
{
 TRACE_POSTGRESQL_BUFFER_CHECKPOINT_START(flags);
 CheckpointStats.ckpt_write_t = GetCurrentTimestamp();
 BufferSync(flags);
 CheckpointStats.ckpt_sync_t = GetCurrentTimestamp();
 TRACE_POSTGRESQL_BUFFER_CHECKPOINT_SYNC_START();
 ProcessSyncRequests();
 CheckpointStats.ckpt_sync_end_t = GetCurrentTimestamp();
 TRACE_POSTGRESQL_BUFFER_CHECKPOINT_DONE();
}
