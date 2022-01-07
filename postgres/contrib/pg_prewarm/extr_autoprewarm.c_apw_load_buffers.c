
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int dsm_segment ;
struct TYPE_5__ {scalar_t__ pid_using_dumpfile; int prewarm_start_idx; int prewarm_stop_idx; int prewarmed_blocks; int lock; int block_info_handle; scalar_t__ database; } ;
struct TYPE_4__ {scalar_t__ database; unsigned int forknum; int blocknum; int filenode; int tablespace; } ;
typedef scalar_t__ Oid ;
typedef int FILE ;
typedef TYPE_1__ BlockInfoRecord ;


 int AUTOPREWARM_FILE ;
 int * AllocateFile (int ,char*) ;
 int Assert (int) ;
 int DSM_HANDLE_INVALID ;
 scalar_t__ ENOENT ;
 int ERROR ;
 int FreeFile (int *) ;
 scalar_t__ InvalidOid ;
 scalar_t__ InvalidPid ;
 int LOG ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 scalar_t__ MyProcPid ;
 int apw_compare_blockinfo ;
 int apw_start_database_worker () ;
 TYPE_3__* apw_state ;
 int * dsm_create (int,int ) ;
 int dsm_detach (int *) ;
 scalar_t__ dsm_segment_address (int *) ;
 int dsm_segment_handle (int *) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,unsigned long,...) ;
 scalar_t__ errno ;
 int fscanf (int *,char*,...) ;
 int have_free_buffer () ;
 int pg_qsort (TYPE_1__*,int,int,int ) ;

__attribute__((used)) static void
apw_load_buffers(void)
{
 FILE *file = ((void*)0);
 int num_elements,
    i;
 BlockInfoRecord *blkinfo;
 dsm_segment *seg;





 LWLockAcquire(&apw_state->lock, LW_EXCLUSIVE);
 if (apw_state->pid_using_dumpfile == InvalidPid)
  apw_state->pid_using_dumpfile = MyProcPid;
 else
 {
  LWLockRelease(&apw_state->lock);
  ereport(LOG,
    (errmsg("skipping prewarm because block dump file is being written by PID %lu",
      (unsigned long) apw_state->pid_using_dumpfile)));
  return;
 }
 LWLockRelease(&apw_state->lock);





 file = AllocateFile(AUTOPREWARM_FILE, "r");
 if (!file)
 {
  if (errno == ENOENT)
  {
   LWLockAcquire(&apw_state->lock, LW_EXCLUSIVE);
   apw_state->pid_using_dumpfile = InvalidPid;
   LWLockRelease(&apw_state->lock);
   return;
  }
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not read file \"%s\": %m",
      AUTOPREWARM_FILE)));
 }


 if (fscanf(file, "<<%d>>\n", &num_elements) != 1)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not read from file \"%s\": %m",
      AUTOPREWARM_FILE)));


 seg = dsm_create(sizeof(BlockInfoRecord) * num_elements, 0);
 blkinfo = (BlockInfoRecord *) dsm_segment_address(seg);


 for (i = 0; i < num_elements; i++)
 {
  unsigned forknum;

  if (fscanf(file, "%u,%u,%u,%u,%u\n", &blkinfo[i].database,
       &blkinfo[i].tablespace, &blkinfo[i].filenode,
       &forknum, &blkinfo[i].blocknum) != 5)
   ereport(ERROR,
     (errmsg("autoprewarm block dump file is corrupted at line %d",
       i + 1)));
  blkinfo[i].forknum = forknum;
 }

 FreeFile(file);


 pg_qsort(blkinfo, num_elements, sizeof(BlockInfoRecord),
    apw_compare_blockinfo);


 apw_state->block_info_handle = dsm_segment_handle(seg);
 apw_state->prewarm_start_idx = apw_state->prewarm_stop_idx = 0;
 apw_state->prewarmed_blocks = 0;


 while (apw_state->prewarm_start_idx < num_elements)
 {
  int j = apw_state->prewarm_start_idx;
  Oid current_db = blkinfo[j].database;





  j++;
  while (j < num_elements)
  {
   if (current_db != blkinfo[j].database)
   {




    if (current_db != InvalidOid)
     break;
    current_db = blkinfo[j].database;
   }

   j++;
  }






  if (current_db == InvalidOid)
   break;


  apw_state->prewarm_stop_idx = j;
  apw_state->database = current_db;
  Assert(apw_state->prewarm_start_idx < apw_state->prewarm_stop_idx);


  if (!have_free_buffer())
   break;





  apw_start_database_worker();


  apw_state->prewarm_start_idx = apw_state->prewarm_stop_idx;
 }


 dsm_detach(seg);
 LWLockAcquire(&apw_state->lock, LW_EXCLUSIVE);
 apw_state->block_info_handle = DSM_HANDLE_INVALID;
 apw_state->pid_using_dumpfile = InvalidPid;
 LWLockRelease(&apw_state->lock);


 ereport(LOG,
   (errmsg("autoprewarm successfully prewarmed %d of %d previously-loaded blocks",
     apw_state->prewarmed_blocks, num_elements)));
}
