
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8 ;
typedef scalar_t__ uint32 ;
struct TYPE_7__ {int rd_smgr; } ;
typedef TYPE_1__* Relation ;
typedef int Page ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int BUFFER_LOCK_EXCLUSIVE ;
 int BufferGetPage (int ) ;
 int BufferIsValid (int ) ;
 int DEBUG1 ;
 int END_CRIT_SECTION () ;
 scalar_t__ HEAPBLK_TO_MAPBLOCK (scalar_t__) ;
 scalar_t__ HEAPBLK_TO_MAPBYTE (scalar_t__) ;
 scalar_t__ HEAPBLK_TO_OFFSET (scalar_t__) ;
 int InRecovery ;
 scalar_t__ InvalidBlockNumber ;
 int LockBuffer (int ,int ) ;
 scalar_t__ MAPSIZE ;
 int MarkBufferDirty (int ) ;
 int MemSet (char*,int ,scalar_t__) ;
 char* PageGetContents (int ) ;
 int RelationGetRelationName (TYPE_1__*) ;
 scalar_t__ RelationNeedsWAL (TYPE_1__*) ;
 int RelationOpenSmgr (TYPE_1__*) ;
 int START_CRIT_SECTION () ;
 int UnlockReleaseBuffer (int ) ;
 int VISIBILITYMAP_FORKNUM ;
 scalar_t__ XLogHintBitIsNeeded () ;
 int elog (int ,char*,int ,scalar_t__) ;
 int log_newpage_buffer (int ,int) ;
 int smgrexists (int ,int ) ;
 scalar_t__ smgrnblocks (int ,int ) ;
 int vm_readbuf (TYPE_1__*,scalar_t__,int) ;

BlockNumber
visibilitymap_prepare_truncate(Relation rel, BlockNumber nheapblocks)
{
 BlockNumber newnblocks;


 BlockNumber truncBlock = HEAPBLK_TO_MAPBLOCK(nheapblocks);
 uint32 truncByte = HEAPBLK_TO_MAPBYTE(nheapblocks);
 uint8 truncOffset = HEAPBLK_TO_OFFSET(nheapblocks);





 RelationOpenSmgr(rel);





 if (!smgrexists(rel->rd_smgr, VISIBILITYMAP_FORKNUM))
  return InvalidBlockNumber;
 if (truncByte != 0 || truncOffset != 0)
 {
  Buffer mapBuffer;
  Page page;
  char *map;

  newnblocks = truncBlock + 1;

  mapBuffer = vm_readbuf(rel, truncBlock, 0);
  if (!BufferIsValid(mapBuffer))
  {

   return InvalidBlockNumber;
  }

  page = BufferGetPage(mapBuffer);
  map = PageGetContents(page);

  LockBuffer(mapBuffer, BUFFER_LOCK_EXCLUSIVE);


  START_CRIT_SECTION();


  MemSet(&map[truncByte + 1], 0, MAPSIZE - (truncByte + 1));
  map[truncByte] &= (1 << truncOffset) - 1;
  MarkBufferDirty(mapBuffer);
  if (!InRecovery && RelationNeedsWAL(rel) && XLogHintBitIsNeeded())
   log_newpage_buffer(mapBuffer, 0);

  END_CRIT_SECTION();

  UnlockReleaseBuffer(mapBuffer);
 }
 else
  newnblocks = truncBlock;

 if (smgrnblocks(rel->rd_smgr, VISIBILITYMAP_FORKNUM) <= newnblocks)
 {

  return InvalidBlockNumber;
 }

 return newnblocks;
}
