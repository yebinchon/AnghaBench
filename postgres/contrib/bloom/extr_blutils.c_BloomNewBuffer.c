
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Page ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 scalar_t__ BloomPageIsDeleted (int ) ;
 int BufferGetPage (int ) ;
 scalar_t__ ConditionalLockBuffer (int ) ;
 int ExclusiveLock ;
 scalar_t__ GetFreeIndexPage (int ) ;
 scalar_t__ InvalidBlockNumber ;
 int LockBuffer (int ,int ) ;
 int LockRelationForExtension (int ,int ) ;
 scalar_t__ P_NEW ;
 scalar_t__ PageIsNew (int ) ;
 int RELATION_IS_LOCAL (int ) ;
 int ReadBuffer (int ,scalar_t__) ;
 int ReleaseBuffer (int ) ;
 int UnlockRelationForExtension (int ,int ) ;

Buffer
BloomNewBuffer(Relation index)
{
 Buffer buffer;
 bool needLock;


 for (;;)
 {
  BlockNumber blkno = GetFreeIndexPage(index);

  if (blkno == InvalidBlockNumber)
   break;

  buffer = ReadBuffer(index, blkno);





  if (ConditionalLockBuffer(buffer))
  {
   Page page = BufferGetPage(buffer);

   if (PageIsNew(page))
    return buffer;

   if (BloomPageIsDeleted(page))
    return buffer;

   LockBuffer(buffer, BUFFER_LOCK_UNLOCK);
  }


  ReleaseBuffer(buffer);
 }


 needLock = !RELATION_IS_LOCAL(index);
 if (needLock)
  LockRelationForExtension(index, ExclusiveLock);

 buffer = ReadBuffer(index, P_NEW);
 LockBuffer(buffer, BUFFER_LOCK_EXCLUSIVE);

 if (needLock)
  UnlockRelationForExtension(index, ExclusiveLock);

 return buffer;
}
