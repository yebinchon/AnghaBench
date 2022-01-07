
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int Relation ;
typedef int Page ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BRIN_IS_REGULAR_PAGE (int ) ;
 int BRIN_elog (int ) ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 int BrinMaxItemSize ;
 scalar_t__ BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 int DEBUG2 ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int ExclusiveLock ;
 int FreeSpaceMapVacuumRange (int ,scalar_t__,int ) ;
 scalar_t__ GetPageWithFreeSpace (int ,int ) ;
 scalar_t__ InvalidBlockNumber ;
 int InvalidBuffer ;
 int LockBuffer (int ,int ) ;
 int LockRelationForExtension (int ,int ) ;
 scalar_t__ P_NEW ;
 int RELATION_IS_LOCAL (int ) ;
 int ReadBuffer (int ,scalar_t__) ;
 scalar_t__ RecordAndGetPageWithFreeSpace (int ,scalar_t__,int ,int ) ;
 int RelationGetRelationName (int ) ;
 scalar_t__ RelationGetTargetBlock (int ) ;
 int RelationSetTargetBlock (int ,scalar_t__) ;
 int ReleaseBuffer (int ) ;
 int UnlockRelationForExtension (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int br_page_get_freespace (int ) ;
 int brin_initialize_empty_new_buffer (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ,int ) ;

__attribute__((used)) static Buffer
brin_getinsertbuffer(Relation irel, Buffer oldbuf, Size itemsz,
      bool *extended)
{
 BlockNumber oldblk;
 BlockNumber newblk;
 Page page;
 Size freespace;


 Assert(itemsz <= BrinMaxItemSize);

 if (BufferIsValid(oldbuf))
  oldblk = BufferGetBlockNumber(oldbuf);
 else
  oldblk = InvalidBlockNumber;


 newblk = RelationGetTargetBlock(irel);
 if (newblk == InvalidBlockNumber)
  newblk = GetPageWithFreeSpace(irel, itemsz);







 for (;;)
 {
  Buffer buf;
  bool extensionLockHeld = 0;

  CHECK_FOR_INTERRUPTS();

  *extended = 0;

  if (newblk == InvalidBlockNumber)
  {





   if (!RELATION_IS_LOCAL(irel))
   {
    LockRelationForExtension(irel, ExclusiveLock);
    extensionLockHeld = 1;
   }
   buf = ReadBuffer(irel, P_NEW);
   newblk = BufferGetBlockNumber(buf);
   *extended = 1;

   BRIN_elog((DEBUG2, "brin_getinsertbuffer: extending to page %u",
        BufferGetBlockNumber(buf)));
  }
  else if (newblk == oldblk)
  {




   buf = oldbuf;
  }
  else
  {
   buf = ReadBuffer(irel, newblk);
  }







  if (BufferIsValid(oldbuf) && oldblk < newblk)
  {
   LockBuffer(oldbuf, BUFFER_LOCK_EXCLUSIVE);
   if (!BRIN_IS_REGULAR_PAGE(BufferGetPage(oldbuf)))
   {
    LockBuffer(oldbuf, BUFFER_LOCK_UNLOCK);
    if (*extended)
     brin_initialize_empty_new_buffer(irel, buf);

    if (extensionLockHeld)
     UnlockRelationForExtension(irel, ExclusiveLock);

    ReleaseBuffer(buf);

    if (*extended)
    {
     FreeSpaceMapVacuumRange(irel, newblk, newblk + 1);

     *extended = 0;
    }

    return InvalidBuffer;
   }
  }

  LockBuffer(buf, BUFFER_LOCK_EXCLUSIVE);

  if (extensionLockHeld)
   UnlockRelationForExtension(irel, ExclusiveLock);

  page = BufferGetPage(buf);







  freespace = *extended ?
   BrinMaxItemSize : br_page_get_freespace(page);
  if (freespace >= itemsz)
  {
   RelationSetTargetBlock(irel, newblk);







   if (BufferIsValid(oldbuf) && oldblk > newblk)
   {
    LockBuffer(oldbuf, BUFFER_LOCK_EXCLUSIVE);
    Assert(BRIN_IS_REGULAR_PAGE(BufferGetPage(oldbuf)));
   }

   return buf;
  }
  if (*extended)
  {
   brin_initialize_empty_new_buffer(irel, buf);


   ereport(ERROR,
     (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
      errmsg("index row size %zu exceeds maximum %zu for index \"%s\"",
       itemsz, freespace, RelationGetRelationName(irel))));
   return InvalidBuffer;
  }

  if (newblk != oldblk)
   UnlockReleaseBuffer(buf);
  if (BufferIsValid(oldbuf) && oldblk <= newblk)
   LockBuffer(oldbuf, BUFFER_LOCK_UNLOCK);





  newblk = RecordAndGetPageWithFreeSpace(irel, newblk, freespace, itemsz);
 }
}
