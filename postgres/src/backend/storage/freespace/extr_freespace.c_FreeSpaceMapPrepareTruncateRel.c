
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint16 ;
struct TYPE_6__ {int rd_smgr; } ;
typedef TYPE_1__* Relation ;
typedef int FSMAddress ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int BUFFER_LOCK_EXCLUSIVE ;
 int BufferGetPage (int ) ;
 int BufferIsValid (int ) ;
 int END_CRIT_SECTION () ;
 int FSM_FORKNUM ;
 int InRecovery ;
 scalar_t__ InvalidBlockNumber ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirty (int ) ;
 scalar_t__ RelationNeedsWAL (TYPE_1__*) ;
 int RelationOpenSmgr (TYPE_1__*) ;
 int START_CRIT_SECTION () ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogHintBitIsNeeded () ;
 int fsm_get_location (scalar_t__,scalar_t__*) ;
 scalar_t__ fsm_logical_to_physical (int ) ;
 int fsm_readbuf (TYPE_1__*,int ,int) ;
 int fsm_truncate_avail (int ,scalar_t__) ;
 int log_newpage_buffer (int ,int) ;
 int smgrexists (int ,int ) ;
 scalar_t__ smgrnblocks (int ,int ) ;

BlockNumber
FreeSpaceMapPrepareTruncateRel(Relation rel, BlockNumber nblocks)
{
 BlockNumber new_nfsmblocks;
 FSMAddress first_removed_address;
 uint16 first_removed_slot;
 Buffer buf;

 RelationOpenSmgr(rel);





 if (!smgrexists(rel->rd_smgr, FSM_FORKNUM))
  return InvalidBlockNumber;


 first_removed_address = fsm_get_location(nblocks, &first_removed_slot);







 if (first_removed_slot > 0)
 {
  buf = fsm_readbuf(rel, first_removed_address, 0);
  if (!BufferIsValid(buf))
   return InvalidBlockNumber;
  LockBuffer(buf, BUFFER_LOCK_EXCLUSIVE);


  START_CRIT_SECTION();

  fsm_truncate_avail(BufferGetPage(buf), first_removed_slot);
  MarkBufferDirty(buf);
  if (!InRecovery && RelationNeedsWAL(rel) && XLogHintBitIsNeeded())
   log_newpage_buffer(buf, 0);

  END_CRIT_SECTION();

  UnlockReleaseBuffer(buf);

  new_nfsmblocks = fsm_logical_to_physical(first_removed_address) + 1;
 }
 else
 {
  new_nfsmblocks = fsm_logical_to_physical(first_removed_address);
  if (smgrnblocks(rel->rd_smgr, FSM_FORKNUM) <= new_nfsmblocks)
   return InvalidBlockNumber;
 }

 return new_nfsmblocks;
}
