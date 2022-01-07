
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef int instr_time ;
struct TYPE_9__ {int ckpt_sync_rels; scalar_t__ ckpt_agg_sync_time; scalar_t__ ckpt_longest_sync; } ;
struct TYPE_8__ {size_t handler; } ;
struct TYPE_7__ {scalar_t__ (* sync_syncfiletag ) (TYPE_3__*,char*) ;} ;
struct TYPE_6__ {scalar_t__ cycle_ctr; TYPE_3__ tag; int canceled; } ;
typedef TYPE_1__ PendingFsyncEntry ;
typedef int HASH_SEQ_STATUS ;
typedef scalar_t__ CycleCtr ;


 int AbsorbSyncRequests () ;
 int Assert (int) ;
 TYPE_5__ CheckpointStats ;
 int DEBUG1 ;
 int ERROR ;
 int FILE_POSSIBLY_DELETED (int ) ;
 int FSYNCS_PER_ABSORB ;
 int HASH_REMOVE ;
 scalar_t__ INSTR_TIME_GET_MICROSEC (int ) ;
 int INSTR_TIME_SET_CURRENT (int ) ;
 int INSTR_TIME_SUBTRACT (int ,int ) ;
 int MAXPGPATH ;
 int data_sync_elevel (int ) ;
 int elog (int ,char*,...) ;
 int enableFsync ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 int errno ;
 int * hash_search (int ,TYPE_3__*,int ,int *) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;
 scalar_t__ log_checkpoints ;
 int pendingOps ;
 scalar_t__ stub1 (TYPE_3__*,char*) ;
 scalar_t__ sync_cycle_ctr ;
 TYPE_2__* syncsw ;

void
ProcessSyncRequests(void)
{
 static bool sync_in_progress = 0;

 HASH_SEQ_STATUS hstat;
 PendingFsyncEntry *entry;
 int absorb_counter;


 int processed = 0;
 instr_time sync_start,
    sync_end,
    sync_diff;
 uint64 elapsed;
 uint64 longest = 0;
 uint64 total_elapsed = 0;





 if (!pendingOps)
  elog(ERROR, "cannot sync without a pendingOps table");
 AbsorbSyncRequests();
 if (sync_in_progress)
 {

  hash_seq_init(&hstat, pendingOps);
  while ((entry = (PendingFsyncEntry *) hash_seq_search(&hstat)) != ((void*)0))
  {
   entry->cycle_ctr = sync_cycle_ctr;
  }
 }


 sync_cycle_ctr++;


 sync_in_progress = 1;


 absorb_counter = FSYNCS_PER_ABSORB;
 hash_seq_init(&hstat, pendingOps);
 while ((entry = (PendingFsyncEntry *) hash_seq_search(&hstat)) != ((void*)0))
 {
  int failures;






  if (!enableFsync)
   continue;






  if (entry->cycle_ctr == sync_cycle_ctr)
   continue;


  Assert((CycleCtr) (entry->cycle_ctr + 1) == sync_cycle_ctr);
  if (--absorb_counter <= 0)
  {
   AbsorbSyncRequests();
   absorb_counter = FSYNCS_PER_ABSORB;
  }
  for (failures = 0; !entry->canceled; failures++)
  {
   char path[MAXPGPATH];

   INSTR_TIME_SET_CURRENT(sync_start);
   if (syncsw[entry->tag.handler].sync_syncfiletag(&entry->tag,
               path) == 0)
   {

    INSTR_TIME_SET_CURRENT(sync_end);
    sync_diff = sync_end;
    INSTR_TIME_SUBTRACT(sync_diff, sync_start);
    elapsed = INSTR_TIME_GET_MICROSEC(sync_diff);
    if (elapsed > longest)
     longest = elapsed;
    total_elapsed += elapsed;
    processed++;

    if (log_checkpoints)
     elog(DEBUG1, "checkpoint sync: number=%d file=%s time=%.3f msec",
       processed,
       path,
       (double) elapsed / 1000);

    break;
   }






   if (!FILE_POSSIBLY_DELETED(errno) || failures > 0)
    ereport(data_sync_elevel(ERROR),
      (errcode_for_file_access(),
       errmsg("could not fsync file \"%s\": %m",
        path)));
   else
    ereport(DEBUG1,
      (errcode_for_file_access(),
       errmsg("could not fsync file \"%s\" but retrying: %m",
        path)));





   AbsorbSyncRequests();
   absorb_counter = FSYNCS_PER_ABSORB;
  }


  if (hash_search(pendingOps, &entry->tag, HASH_REMOVE, ((void*)0)) == ((void*)0))
   elog(ERROR, "pendingOps corrupted");
 }


 CheckpointStats.ckpt_sync_rels = processed;
 CheckpointStats.ckpt_longest_sync = longest;
 CheckpointStats.ckpt_agg_sync_time = total_elapsed;


 sync_in_progress = 0;
}
