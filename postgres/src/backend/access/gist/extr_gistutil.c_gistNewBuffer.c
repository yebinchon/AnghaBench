
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Page ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int BufferGetPage (int ) ;
 scalar_t__ ConditionalLockBuffer (int ) ;
 int ExclusiveLock ;
 int GIST_EXCLUSIVE ;
 int GIST_UNLOCK ;
 scalar_t__ GetFreeIndexPage (int ) ;
 int GistPageGetDeleteXid (int ) ;
 scalar_t__ InvalidBlockNumber ;
 int LockBuffer (int ,int ) ;
 int LockRelationForExtension (int ,int ) ;
 scalar_t__ P_NEW ;
 scalar_t__ PageIsNew (int ) ;
 int RELATION_IS_LOCAL (int ) ;
 int ReadBuffer (int ,scalar_t__) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int ReleaseBuffer (int ) ;
 int UnlockRelationForExtension (int ,int ) ;
 scalar_t__ XLogStandbyInfoActive () ;
 scalar_t__ gistPageRecyclable (int ) ;
 int gistXLogPageReuse (int ,scalar_t__,int ) ;
 int gistcheckpage (int ,int ) ;

Buffer
gistNewBuffer(Relation r)
{
 Buffer buffer;
 bool needLock;


 for (;;)
 {
  BlockNumber blkno = GetFreeIndexPage(r);

  if (blkno == InvalidBlockNumber)
   break;

  buffer = ReadBuffer(r, blkno);





  if (ConditionalLockBuffer(buffer))
  {
   Page page = BufferGetPage(buffer);




   if (PageIsNew(page))
    return buffer;

   gistcheckpage(r, buffer);





   if (gistPageRecyclable(page))
   {






    if (XLogStandbyInfoActive() && RelationNeedsWAL(r))
     gistXLogPageReuse(r, blkno, GistPageGetDeleteXid(page));

    return buffer;
   }

   LockBuffer(buffer, GIST_UNLOCK);
  }


  ReleaseBuffer(buffer);
 }


 needLock = !RELATION_IS_LOCAL(r);

 if (needLock)
  LockRelationForExtension(r, ExclusiveLock);

 buffer = ReadBuffer(r, P_NEW);
 LockBuffer(buffer, GIST_EXCLUSIVE);

 if (needLock)
  UnlockRelationForExtension(r, ExclusiveLock);

 return buffer;
}
