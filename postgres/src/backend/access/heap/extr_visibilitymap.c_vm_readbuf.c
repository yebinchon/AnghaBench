
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ smgr_vm_nblocks; } ;
struct TYPE_8__ {TYPE_4__* rd_smgr; } ;
typedef TYPE_1__* Relation ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int BLCKSZ ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetPage (int ) ;
 scalar_t__ InvalidBlockNumber ;
 int InvalidBuffer ;
 int LockBuffer (int ,int ) ;
 int PageInit (int ,int ,int ) ;
 scalar_t__ PageIsNew (int ) ;
 int RBM_ZERO_ON_ERROR ;
 int ReadBufferExtended (TYPE_1__*,int ,scalar_t__,int ,int *) ;
 int RelationOpenSmgr (TYPE_1__*) ;
 int VISIBILITYMAP_FORKNUM ;
 scalar_t__ smgrexists (TYPE_4__*,int ) ;
 scalar_t__ smgrnblocks (TYPE_4__*,int ) ;
 int vm_extend (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static Buffer
vm_readbuf(Relation rel, BlockNumber blkno, bool extend)
{
 Buffer buf;
 RelationOpenSmgr(rel);





 if (rel->rd_smgr->smgr_vm_nblocks == InvalidBlockNumber)
 {
  if (smgrexists(rel->rd_smgr, VISIBILITYMAP_FORKNUM))
   rel->rd_smgr->smgr_vm_nblocks = smgrnblocks(rel->rd_smgr,
              VISIBILITYMAP_FORKNUM);
  else
   rel->rd_smgr->smgr_vm_nblocks = 0;
 }


 if (blkno >= rel->rd_smgr->smgr_vm_nblocks)
 {
  if (extend)
   vm_extend(rel, blkno + 1);
  else
   return InvalidBuffer;
 }
 buf = ReadBufferExtended(rel, VISIBILITYMAP_FORKNUM, blkno,
        RBM_ZERO_ON_ERROR, ((void*)0));
 if (PageIsNew(BufferGetPage(buf)))
 {
  LockBuffer(buf, BUFFER_LOCK_EXCLUSIVE);
  if (PageIsNew(BufferGetPage(buf)))
   PageInit(BufferGetPage(buf), BLCKSZ, 0);
  LockBuffer(buf, BUFFER_LOCK_UNLOCK);
 }
 return buf;
}
