
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xact; } ;
struct TYPE_4__ {TYPE_1__ btpo; } ;
typedef int Relation ;
typedef int Page ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;
typedef TYPE_2__* BTPageOpaque ;


 int Assert (int) ;
 int BT_WRITE ;
 int BufferGetPage (int ) ;
 int BufferGetPageSize (int ) ;
 scalar_t__ ConditionalLockBuffer (int ) ;
 int DEBUG2 ;
 int ExclusiveLock ;
 scalar_t__ GetFreeIndexPage (int ) ;
 scalar_t__ InvalidBlockNumber ;
 int LockBuffer (int ,int) ;
 int LockRelationForExtension (int ,int ) ;
 scalar_t__ P_NEW ;
 int PageGetSpecialPointer (int ) ;
 int PageIsNew (int ) ;
 int RELATION_IS_LOCAL (int ) ;
 int ReadBuffer (int ,scalar_t__) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int ReleaseBuffer (int ) ;
 int UnlockRelationForExtension (int ,int ) ;
 scalar_t__ XLogStandbyInfoActive () ;
 int _bt_checkpage (int ,int ) ;
 int _bt_log_reuse_page (int ,scalar_t__,int ) ;
 scalar_t__ _bt_page_recyclable (int ) ;
 int _bt_pageinit (int ,int ) ;
 int _bt_relbuf (int ,int ) ;
 int elog (int ,char*) ;

Buffer
_bt_getbuf(Relation rel, BlockNumber blkno, int access)
{
 Buffer buf;

 if (blkno != P_NEW)
 {

  buf = ReadBuffer(rel, blkno);
  LockBuffer(buf, access);
  _bt_checkpage(rel, buf);
 }
 else
 {
  bool needLock;
  Page page;

  Assert(access == BT_WRITE);
  for (;;)
  {
   blkno = GetFreeIndexPage(rel);
   if (blkno == InvalidBlockNumber)
    break;
   buf = ReadBuffer(rel, blkno);
   if (ConditionalLockBuffer(buf))
   {
    page = BufferGetPage(buf);
    if (_bt_page_recyclable(page))
    {
     if (XLogStandbyInfoActive() && RelationNeedsWAL(rel) &&
      !PageIsNew(page))
     {
      BTPageOpaque opaque = (BTPageOpaque) PageGetSpecialPointer(page);

      _bt_log_reuse_page(rel, blkno, opaque->btpo.xact);
     }


     _bt_pageinit(page, BufferGetPageSize(buf));
     return buf;
    }
    elog(DEBUG2, "FSM returned nonrecyclable page");
    _bt_relbuf(rel, buf);
   }
   else
   {
    elog(DEBUG2, "FSM returned nonlockable page");

    ReleaseBuffer(buf);
   }
  }
  needLock = !RELATION_IS_LOCAL(rel);

  if (needLock)
   LockRelationForExtension(rel, ExclusiveLock);

  buf = ReadBuffer(rel, P_NEW);


  LockBuffer(buf, BT_WRITE);







  if (needLock)
   UnlockRelationForExtension(rel, ExclusiveLock);


  page = BufferGetPage(buf);
  Assert(PageIsNew(page));
  _bt_pageinit(page, BufferGetPageSize(buf));
 }


 return buf;
}
