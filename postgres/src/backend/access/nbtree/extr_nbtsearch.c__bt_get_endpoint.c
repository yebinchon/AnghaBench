
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_6__ {scalar_t__ level; } ;
struct TYPE_7__ {scalar_t__ btpo_next; TYPE_1__ btpo; } ;
typedef int Snapshot ;
typedef int Relation ;
typedef int Page ;
typedef int OffsetNumber ;
typedef scalar_t__ IndexTuple ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;
typedef TYPE_2__* BTPageOpaque ;


 int BT_READ ;
 scalar_t__ BTreeInnerTupleGetDownLink (scalar_t__) ;
 int BufferGetPage (int ) ;
 int BufferIsValid (int ) ;
 int ERRCODE_INDEX_CORRUPTED ;
 int ERROR ;
 int InvalidBuffer ;
 int P_FIRSTDATAKEY (TYPE_2__*) ;
 scalar_t__ P_IGNORE (TYPE_2__*) ;
 scalar_t__ P_NONE ;
 int P_RIGHTMOST (TYPE_2__*) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int ) ;
 int PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int RelationGetRelationName (int ) ;
 int TestForOldSnapshot (int ,int ,int ) ;
 int _bt_getroot (int ,int ) ;
 int _bt_gettrueroot (int ) ;
 int _bt_relandgetbuf (int ,int ,scalar_t__,int ) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg_internal (char*,scalar_t__,int ) ;

Buffer
_bt_get_endpoint(Relation rel, uint32 level, bool rightmost,
     Snapshot snapshot)
{
 Buffer buf;
 Page page;
 BTPageOpaque opaque;
 OffsetNumber offnum;
 BlockNumber blkno;
 IndexTuple itup;






 if (level == 0)
  buf = _bt_getroot(rel, BT_READ);
 else
  buf = _bt_gettrueroot(rel);

 if (!BufferIsValid(buf))
  return InvalidBuffer;

 page = BufferGetPage(buf);
 TestForOldSnapshot(snapshot, rel, page);
 opaque = (BTPageOpaque) PageGetSpecialPointer(page);

 for (;;)
 {






  while (P_IGNORE(opaque) ||
      (rightmost && !P_RIGHTMOST(opaque)))
  {
   blkno = opaque->btpo_next;
   if (blkno == P_NONE)
    elog(ERROR, "fell off the end of index \"%s\"",
      RelationGetRelationName(rel));
   buf = _bt_relandgetbuf(rel, buf, blkno, BT_READ);
   page = BufferGetPage(buf);
   TestForOldSnapshot(snapshot, rel, page);
   opaque = (BTPageOpaque) PageGetSpecialPointer(page);
  }


  if (opaque->btpo.level == level)
   break;
  if (opaque->btpo.level < level)
   ereport(ERROR,
     (errcode(ERRCODE_INDEX_CORRUPTED),
      errmsg_internal("btree level %u not found in index \"%s\"",
          level, RelationGetRelationName(rel))));


  if (rightmost)
   offnum = PageGetMaxOffsetNumber(page);
  else
   offnum = P_FIRSTDATAKEY(opaque);

  itup = (IndexTuple) PageGetItem(page, PageGetItemId(page, offnum));
  blkno = BTreeInnerTupleGetDownLink(itup);

  buf = _bt_relandgetbuf(rel, buf, blkno, BT_READ);
  page = BufferGetPage(buf);
  opaque = (BTPageOpaque) PageGetSpecialPointer(page);
 }

 return buf;
}
