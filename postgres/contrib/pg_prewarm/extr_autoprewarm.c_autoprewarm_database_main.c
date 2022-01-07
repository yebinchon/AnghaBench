
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int dsm_segment ;
struct TYPE_11__ {int prewarm_start_idx; int prewarm_stop_idx; int prewarmed_blocks; int database; int block_info_handle; } ;
struct TYPE_10__ {scalar_t__ database; scalar_t__ filenode; scalar_t__ forknum; scalar_t__ blocknum; int tablespace; } ;
struct TYPE_9__ {int rd_smgr; } ;
typedef TYPE_1__* Relation ;
typedef int Oid ;
typedef int Datum ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;
typedef TYPE_2__ BlockInfoRecord ;


 int AccessShareLock ;
 int Assert (int ) ;
 int BackgroundWorkerInitializeConnectionByOid (int ,int ,int ) ;
 int BackgroundWorkerUnblockSignals () ;
 scalar_t__ BufferIsValid (int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 int CommitTransactionCommand () ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 scalar_t__ InvalidForkNumber ;
 int InvalidOid ;
 scalar_t__ MAX_FORKNUM ;
 scalar_t__ OidIsValid (int ) ;
 int RBM_NORMAL ;
 int ReadBufferExtended (TYPE_1__*,scalar_t__,scalar_t__,int ,int *) ;
 scalar_t__ RelationGetNumberOfBlocksInFork (TYPE_1__*,scalar_t__) ;
 int RelationOpenSmgr (TYPE_1__*) ;
 int ReleaseBuffer (int ) ;
 int RelidByRelfilenode (int ,scalar_t__) ;
 int SIGTERM ;
 int StartTransactionCommand () ;
 int apw_init_shmem () ;
 TYPE_5__* apw_state ;
 int die ;
 int * dsm_attach (int ) ;
 int dsm_detach (int *) ;
 scalar_t__ dsm_segment_address (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ have_free_buffer () ;
 int pqsignal (int ,int ) ;
 int relation_close (TYPE_1__*,int ) ;
 scalar_t__ smgrexists (int ,scalar_t__) ;
 TYPE_1__* try_relation_open (int ,int ) ;

void
autoprewarm_database_main(Datum main_arg)
{
 int pos;
 BlockInfoRecord *block_info;
 Relation rel = ((void*)0);
 BlockNumber nblocks = 0;
 BlockInfoRecord *old_blk = ((void*)0);
 dsm_segment *seg;


 pqsignal(SIGTERM, die);
 BackgroundWorkerUnblockSignals();


 apw_init_shmem();
 seg = dsm_attach(apw_state->block_info_handle);
 if (seg == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("could not map dynamic shared memory segment")));
 BackgroundWorkerInitializeConnectionByOid(apw_state->database, InvalidOid, 0);
 block_info = (BlockInfoRecord *) dsm_segment_address(seg);
 pos = apw_state->prewarm_start_idx;





 while (pos < apw_state->prewarm_stop_idx && have_free_buffer())
 {
  BlockInfoRecord *blk = &block_info[pos++];
  Buffer buf;

  CHECK_FOR_INTERRUPTS();





  if (old_blk != ((void*)0) && old_blk->database != blk->database &&
   old_blk->database != 0)
   break;






  if (old_blk != ((void*)0) && old_blk->filenode != blk->filenode &&
   rel != ((void*)0))
  {
   relation_close(rel, AccessShareLock);
   rel = ((void*)0);
   CommitTransactionCommand();
  }





  if (old_blk == ((void*)0) || old_blk->filenode != blk->filenode)
  {
   Oid reloid;

   Assert(rel == ((void*)0));
   StartTransactionCommand();
   reloid = RelidByRelfilenode(blk->tablespace, blk->filenode);
   if (OidIsValid(reloid))
    rel = try_relation_open(reloid, AccessShareLock);

   if (!rel)
    CommitTransactionCommand();
  }
  if (!rel)
  {
   old_blk = blk;
   continue;
  }


  if (old_blk == ((void*)0) ||
   old_blk->filenode != blk->filenode ||
   old_blk->forknum != blk->forknum)
  {
   RelationOpenSmgr(rel);





   if (blk->forknum > InvalidForkNumber &&
    blk->forknum <= MAX_FORKNUM &&
    smgrexists(rel->rd_smgr, blk->forknum))
    nblocks = RelationGetNumberOfBlocksInFork(rel, blk->forknum);
   else
    nblocks = 0;
  }


  if (blk->blocknum >= nblocks)
  {

   old_blk = blk;
   continue;
  }


  buf = ReadBufferExtended(rel, blk->forknum, blk->blocknum, RBM_NORMAL,
         ((void*)0));
  if (BufferIsValid(buf))
  {
   apw_state->prewarmed_blocks++;
   ReleaseBuffer(buf);
  }

  old_blk = blk;
 }

 dsm_detach(seg);


 if (rel)
 {
  relation_close(rel, AccessShareLock);
  CommitTransactionCommand();
 }
}
