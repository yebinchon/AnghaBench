
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int BufferGetPage (int ) ;
 scalar_t__ ConditionalLockBuffer (int ) ;
 int ExclusiveLock ;
 int GIN_EXCLUSIVE ;
 int GIN_UNLOCK ;
 scalar_t__ GetFreeIndexPage (int ) ;
 scalar_t__ GinPageIsRecyclable (int ) ;
 scalar_t__ InvalidBlockNumber ;
 int LockBuffer (int ,int ) ;
 int LockRelationForExtension (int ,int ) ;
 scalar_t__ P_NEW ;
 int RELATION_IS_LOCAL (int ) ;
 int ReadBuffer (int ,scalar_t__) ;
 int ReleaseBuffer (int ) ;
 int UnlockRelationForExtension (int ,int ) ;

Buffer
GinNewBuffer(Relation index)
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
   if (GinPageIsRecyclable(BufferGetPage(buffer)))
    return buffer;

   LockBuffer(buffer, GIN_UNLOCK);
  }


  ReleaseBuffer(buffer);
 }


 needLock = !RELATION_IS_LOCAL(index);
 if (needLock)
  LockRelationForExtension(index, ExclusiveLock);

 buffer = ReadBuffer(index, P_NEW);
 LockBuffer(buffer, GIN_EXCLUSIVE);

 if (needLock)
  UnlockRelationForExtension(index, ExclusiveLock);

 return buffer;
}
