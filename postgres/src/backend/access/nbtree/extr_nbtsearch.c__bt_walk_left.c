
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ btpo_prev; scalar_t__ btpo_next; } ;
typedef int Snapshot ;
typedef int Relation ;
typedef int Page ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;
typedef TYPE_1__* BTPageOpaque ;


 int BT_READ ;
 scalar_t__ BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 int ERROR ;
 int InvalidBuffer ;
 scalar_t__ P_ISDELETED (TYPE_1__*) ;
 scalar_t__ P_LEFTMOST (TYPE_1__*) ;
 scalar_t__ P_RIGHTMOST (TYPE_1__*) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int RelationGetRelationName (int ) ;
 int TestForOldSnapshot (int ,int ,int ) ;
 int _bt_getbuf (int ,scalar_t__,int ) ;
 int _bt_relandgetbuf (int ,int ,scalar_t__,int ) ;
 int _bt_relbuf (int ,int ) ;
 int elog (int ,char*,scalar_t__,...) ;

__attribute__((used)) static Buffer
_bt_walk_left(Relation rel, Buffer buf, Snapshot snapshot)
{
 Page page;
 BTPageOpaque opaque;

 page = BufferGetPage(buf);
 opaque = (BTPageOpaque) PageGetSpecialPointer(page);

 for (;;)
 {
  BlockNumber obknum;
  BlockNumber lblkno;
  BlockNumber blkno;
  int tries;


  if (P_LEFTMOST(opaque))
  {
   _bt_relbuf(rel, buf);
   break;
  }

  obknum = BufferGetBlockNumber(buf);

  blkno = lblkno = opaque->btpo_prev;
  _bt_relbuf(rel, buf);

  CHECK_FOR_INTERRUPTS();
  buf = _bt_getbuf(rel, blkno, BT_READ);
  page = BufferGetPage(buf);
  TestForOldSnapshot(snapshot, rel, page);
  opaque = (BTPageOpaque) PageGetSpecialPointer(page);
  tries = 0;
  for (;;)
  {
   if (!P_ISDELETED(opaque) && opaque->btpo_next == obknum)
   {

    return buf;
   }
   if (P_RIGHTMOST(opaque) || ++tries > 4)
    break;
   blkno = opaque->btpo_next;
   buf = _bt_relandgetbuf(rel, buf, blkno, BT_READ);
   page = BufferGetPage(buf);
   TestForOldSnapshot(snapshot, rel, page);
   opaque = (BTPageOpaque) PageGetSpecialPointer(page);
  }


  buf = _bt_relandgetbuf(rel, buf, obknum, BT_READ);
  page = BufferGetPage(buf);
  TestForOldSnapshot(snapshot, rel, page);
  opaque = (BTPageOpaque) PageGetSpecialPointer(page);
  if (P_ISDELETED(opaque))
  {






   for (;;)
   {
    if (P_RIGHTMOST(opaque))
     elog(ERROR, "fell off the end of index \"%s\"",
       RelationGetRelationName(rel));
    blkno = opaque->btpo_next;
    buf = _bt_relandgetbuf(rel, buf, blkno, BT_READ);
    page = BufferGetPage(buf);
    TestForOldSnapshot(snapshot, rel, page);
    opaque = (BTPageOpaque) PageGetSpecialPointer(page);
    if (!P_ISDELETED(opaque))
     break;
   }





  }
  else
  {





   if (opaque->btpo_prev == lblkno)
    elog(ERROR, "could not find left sibling of block %u in index \"%s\"",
      obknum, RelationGetRelationName(rel));

  }
 }

 return InvalidBuffer;
}
