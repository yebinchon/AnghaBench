
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ btpo_next; scalar_t__ btpo_prev; } ;
struct TYPE_9__ {scalar_t__ bts_blkno; scalar_t__ bts_offset; struct TYPE_9__* bts_parent; } ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef scalar_t__ Buffer ;
typedef scalar_t__ BlockNumber ;
typedef TYPE_1__* BTStack ;
typedef TYPE_2__* BTPageOpaque ;


 int BT_READ ;
 int BufferGetPage (scalar_t__) ;
 int ERRCODE_INDEX_CORRUPTED ;
 int ERROR ;
 scalar_t__ InvalidBuffer ;
 scalar_t__ P_FIRSTDATAKEY (TYPE_2__*) ;
 scalar_t__ P_INCOMPLETE_SPLIT (TYPE_2__*) ;
 scalar_t__ P_ISROOT (TYPE_2__*) ;
 scalar_t__ P_NONE ;
 scalar_t__ P_RIGHTMOST (TYPE_2__*) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int RelationGetRelationName (int ) ;
 scalar_t__ _bt_getbuf (int ,scalar_t__,int ) ;
 scalar_t__ _bt_getstackbuf (int ,TYPE_1__*,scalar_t__) ;
 int _bt_relbuf (int ,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg_internal (char*,int ,scalar_t__) ;

__attribute__((used)) static bool
_bt_lock_branch_parent(Relation rel, BlockNumber child, BTStack stack,
        Buffer *topparent, OffsetNumber *topoff,
        BlockNumber *target, BlockNumber *rightsib)
{
 BlockNumber parent;
 OffsetNumber poffset,
    maxoff;
 Buffer pbuf;
 Page page;
 BTPageOpaque opaque;
 BlockNumber leftsib;







 pbuf = _bt_getstackbuf(rel, stack, child);
 if (pbuf == InvalidBuffer)
  ereport(ERROR,
    (errcode(ERRCODE_INDEX_CORRUPTED),
     errmsg_internal("failed to re-find parent key in index \"%s\" for deletion target page %u",
         RelationGetRelationName(rel), child)));
 parent = stack->bts_blkno;
 poffset = stack->bts_offset;

 page = BufferGetPage(pbuf);
 opaque = (BTPageOpaque) PageGetSpecialPointer(page);
 maxoff = PageGetMaxOffsetNumber(page);





 if (poffset >= maxoff)
 {

  if (poffset == P_FIRSTDATAKEY(opaque))
  {





   if (P_RIGHTMOST(opaque) || P_ISROOT(opaque) ||
    P_INCOMPLETE_SPLIT(opaque))
   {
    _bt_relbuf(rel, pbuf);
    return 0;
   }

   *target = parent;
   *rightsib = opaque->btpo_next;
   leftsib = opaque->btpo_prev;

   _bt_relbuf(rel, pbuf);







   if (leftsib != P_NONE)
   {
    Buffer lbuf;
    Page lpage;
    BTPageOpaque lopaque;

    lbuf = _bt_getbuf(rel, leftsib, BT_READ);
    lpage = BufferGetPage(lbuf);
    lopaque = (BTPageOpaque) PageGetSpecialPointer(lpage);
    if (lopaque->btpo_next == parent &&
     P_INCOMPLETE_SPLIT(lopaque))
    {
     _bt_relbuf(rel, lbuf);
     return 0;
    }
    _bt_relbuf(rel, lbuf);
   }

   return _bt_lock_branch_parent(rel, parent, stack->bts_parent,
            topparent, topoff, target, rightsib);
  }
  else
  {

   _bt_relbuf(rel, pbuf);
   return 0;
  }
 }
 else
 {

  *topparent = pbuf;
  *topoff = poffset;
  return 1;
 }
}
