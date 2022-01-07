
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32 ;
typedef scalar_t__ pid_t ;
struct TYPE_14__ {scalar_t__ pid_using_dumpfile; int lock; } ;
struct TYPE_13__ {int database; int tablespace; int filenode; int blocknum; scalar_t__ forknum; } ;
struct TYPE_10__ {int dbNode; int spcNode; int relNode; } ;
struct TYPE_11__ {int blockNum; scalar_t__ forkNum; TYPE_1__ rnode; } ;
struct TYPE_12__ {TYPE_2__ tag; } ;
typedef int FILE ;
typedef TYPE_3__ BufferDesc ;
typedef TYPE_4__ BlockInfoRecord ;


 char* AUTOPREWARM_FILE ;
 int * AllocateFile (char*,char*) ;
 int BM_PERMANENT ;
 int BM_TAG_VALID ;
 int CHECK_FOR_INTERRUPTS () ;
 int DEBUG1 ;
 int ERROR ;
 int FreeFile (int *) ;
 TYPE_3__* GetBufferDescriptor (int) ;
 scalar_t__ InvalidPid ;
 int LOG ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 int LockBufHdr (TYPE_3__*) ;
 int MAXPGPATH ;
 scalar_t__ MyProcPid ;
 int NBuffers ;
 int UnlockBufHdr (TYPE_3__*,int) ;
 TYPE_6__* apw_state ;
 int durable_rename (char*,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,...) ;
 int errno ;
 int fprintf (int *,char*,int,...) ;
 scalar_t__ palloc (int) ;
 int pfree (TYPE_4__*) ;
 int snprintf (char*,int,char*,char*) ;
 int unlink (char*) ;

__attribute__((used)) static int
apw_dump_now(bool is_bgworker, bool dump_unlogged)
{
 int num_blocks;
 int i;
 int ret;
 BlockInfoRecord *block_info_array;
 BufferDesc *bufHdr;
 FILE *file;
 char transient_dump_file_path[MAXPGPATH];
 pid_t pid;

 LWLockAcquire(&apw_state->lock, LW_EXCLUSIVE);
 pid = apw_state->pid_using_dumpfile;
 if (apw_state->pid_using_dumpfile == InvalidPid)
  apw_state->pid_using_dumpfile = MyProcPid;
 LWLockRelease(&apw_state->lock);

 if (pid != InvalidPid)
 {
  if (!is_bgworker)
   ereport(ERROR,
     (errmsg("could not perform block dump because dump file is being used by PID %lu",
       (unsigned long) apw_state->pid_using_dumpfile)));

  ereport(LOG,
    (errmsg("skipping block dump because it is already being performed by PID %lu",
      (unsigned long) apw_state->pid_using_dumpfile)));
  return 0;
 }

 block_info_array =
  (BlockInfoRecord *) palloc(sizeof(BlockInfoRecord) * NBuffers);

 for (num_blocks = 0, i = 0; i < NBuffers; i++)
 {
  uint32 buf_state;

  CHECK_FOR_INTERRUPTS();

  bufHdr = GetBufferDescriptor(i);


  buf_state = LockBufHdr(bufHdr);






  if (buf_state & BM_TAG_VALID &&
   ((buf_state & BM_PERMANENT) || dump_unlogged))
  {
   block_info_array[num_blocks].database = bufHdr->tag.rnode.dbNode;
   block_info_array[num_blocks].tablespace = bufHdr->tag.rnode.spcNode;
   block_info_array[num_blocks].filenode = bufHdr->tag.rnode.relNode;
   block_info_array[num_blocks].forknum = bufHdr->tag.forkNum;
   block_info_array[num_blocks].blocknum = bufHdr->tag.blockNum;
   ++num_blocks;
  }

  UnlockBufHdr(bufHdr, buf_state);
 }

 snprintf(transient_dump_file_path, MAXPGPATH, "%s.tmp", AUTOPREWARM_FILE);
 file = AllocateFile(transient_dump_file_path, "w");
 if (!file)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not open file \"%s\": %m",
      transient_dump_file_path)));

 ret = fprintf(file, "<<%d>>\n", num_blocks);
 if (ret < 0)
 {
  int save_errno = errno;

  FreeFile(file);
  unlink(transient_dump_file_path);
  errno = save_errno;
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not write to file \"%s\": %m",
      transient_dump_file_path)));
 }

 for (i = 0; i < num_blocks; i++)
 {
  CHECK_FOR_INTERRUPTS();

  ret = fprintf(file, "%u,%u,%u,%u,%u\n",
       block_info_array[i].database,
       block_info_array[i].tablespace,
       block_info_array[i].filenode,
       (uint32) block_info_array[i].forknum,
       block_info_array[i].blocknum);
  if (ret < 0)
  {
   int save_errno = errno;

   FreeFile(file);
   unlink(transient_dump_file_path);
   errno = save_errno;
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not write to file \"%s\": %m",
       transient_dump_file_path)));
  }
 }

 pfree(block_info_array);





 ret = FreeFile(file);
 if (ret != 0)
 {
  int save_errno = errno;

  unlink(transient_dump_file_path);
  errno = save_errno;
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not close file \"%s\": %m",
      transient_dump_file_path)));
 }

 (void) durable_rename(transient_dump_file_path, AUTOPREWARM_FILE, ERROR);
 apw_state->pid_using_dumpfile = InvalidPid;

 ereport(DEBUG1,
   (errmsg("wrote block details for %d blocks", num_blocks)));
 return num_blocks;
}
