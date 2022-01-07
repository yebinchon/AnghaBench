
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int instr_time ;
struct TYPE_3__ {int rel_pages; int nonempty_pages; int lock_waiter_detected; } ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef TYPE_1__ LVRelStats ;
typedef int ItemId ;
typedef int Buffer ;
typedef int BlockNumber ;


 int AccessExclusiveLock ;
 int BUFFER_LOCK_SHARE ;
 int BufferGetPage (int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ FirstOffsetNumber ;
 int INSTR_TIME_GET_MICROSEC (int ) ;
 int INSTR_TIME_SET_CURRENT (int ) ;
 int INSTR_TIME_SUBTRACT (int ,int ) ;
 int InvalidBlockNumber ;
 scalar_t__ ItemIdIsUsed (int ) ;
 int LockBuffer (int ,int ) ;
 scalar_t__ LockHasWaitersRelation (int ,int ) ;
 int MAIN_FORKNUM ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 int PREFETCH_SIZE ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageIsEmpty (int ) ;
 scalar_t__ PageIsNew (int ) ;
 int PrefetchBuffer (int ,int ,int) ;
 int RBM_NORMAL ;
 int ReadBufferExtended (int ,int ,int,int ,int ) ;
 int RelationGetRelationName (int ) ;
 int StaticAssertStmt (int,char*) ;
 int UnlockReleaseBuffer (int ) ;
 int VACUUM_TRUNCATE_LOCK_CHECK_INTERVAL ;
 int elevel ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 int vac_strategy ;

__attribute__((used)) static BlockNumber
count_nondeletable_pages(Relation onerel, LVRelStats *vacrelstats)
{
 BlockNumber blkno;
 BlockNumber prefetchedUntil;
 instr_time starttime;


 INSTR_TIME_SET_CURRENT(starttime);







 blkno = vacrelstats->rel_pages;
 StaticAssertStmt((PREFETCH_SIZE & (PREFETCH_SIZE - 1)) == 0,
      "prefetch size must be power of 2");
 prefetchedUntil = InvalidBlockNumber;
 while (blkno > vacrelstats->nonempty_pages)
 {
  Buffer buf;
  Page page;
  OffsetNumber offnum,
     maxoff;
  bool hastup;
  if ((blkno % 32) == 0)
  {
   instr_time currenttime;
   instr_time elapsed;

   INSTR_TIME_SET_CURRENT(currenttime);
   elapsed = currenttime;
   INSTR_TIME_SUBTRACT(elapsed, starttime);
   if ((INSTR_TIME_GET_MICROSEC(elapsed) / 1000)
    >= VACUUM_TRUNCATE_LOCK_CHECK_INTERVAL)
   {
    if (LockHasWaitersRelation(onerel, AccessExclusiveLock))
    {
     ereport(elevel,
       (errmsg("\"%s\": suspending truncate due to conflicting lock request",
         RelationGetRelationName(onerel))));

     vacrelstats->lock_waiter_detected = 1;
     return blkno;
    }
    starttime = currenttime;
   }
  }






  CHECK_FOR_INTERRUPTS();

  blkno--;


  if (prefetchedUntil > blkno)
  {
   BlockNumber prefetchStart;
   BlockNumber pblkno;

   prefetchStart = blkno & ~(PREFETCH_SIZE - 1);
   for (pblkno = prefetchStart; pblkno <= blkno; pblkno++)
   {
    PrefetchBuffer(onerel, MAIN_FORKNUM, pblkno);
    CHECK_FOR_INTERRUPTS();
   }
   prefetchedUntil = prefetchStart;
  }

  buf = ReadBufferExtended(onerel, MAIN_FORKNUM, blkno,
         RBM_NORMAL, vac_strategy);


  LockBuffer(buf, BUFFER_LOCK_SHARE);

  page = BufferGetPage(buf);

  if (PageIsNew(page) || PageIsEmpty(page))
  {
   UnlockReleaseBuffer(buf);
   continue;
  }

  hastup = 0;
  maxoff = PageGetMaxOffsetNumber(page);
  for (offnum = FirstOffsetNumber;
    offnum <= maxoff;
    offnum = OffsetNumberNext(offnum))
  {
   ItemId itemid;

   itemid = PageGetItemId(page, offnum);







   if (ItemIdIsUsed(itemid))
   {
    hastup = 1;
    break;
   }
  }

  UnlockReleaseBuffer(buf);


  if (hastup)
   return blkno + 1;
 }






 return vacrelstats->nonempty_pages;
}
