
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ level; } ;
struct TYPE_9__ {TYPE_1__ btpo; } ;
struct TYPE_8__ {scalar_t__ bts_offset; int * bts_parent; void* bts_blkno; } ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ IndexTuple ;
typedef scalar_t__ Buffer ;
typedef void* BlockNumber ;
typedef TYPE_2__ BTStackData ;
typedef TYPE_2__* BTStack ;
typedef TYPE_4__* BTPageOpaque ;


 int Assert (int) ;
 int BTreeInnerTupleSetDownLink (scalar_t__,void*) ;
 void* BufferGetBlockNumber (scalar_t__) ;
 int BufferGetPage (scalar_t__) ;
 scalar_t__ CopyIndexTuple (scalar_t__) ;
 int DEBUG2 ;
 int ERRCODE_INDEX_CORRUPTED ;
 int ERROR ;
 scalar_t__ InvalidBuffer ;
 scalar_t__ InvalidOffsetNumber ;
 int P_HIKEY ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int RelationGetRelationName (int ) ;
 scalar_t__ _bt_get_endpoint (int ,scalar_t__,int,int *) ;
 scalar_t__ _bt_getstackbuf (int ,TYPE_2__*,void*) ;
 int _bt_insertonpg (int ,int *,scalar_t__,scalar_t__,int *,scalar_t__,scalar_t__,int) ;
 scalar_t__ _bt_newroot (int ,scalar_t__,scalar_t__) ;
 int _bt_relbuf (int ,scalar_t__) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg_internal (char*,int ,void*,void*) ;
 int pfree (scalar_t__) ;

__attribute__((used)) static void
_bt_insert_parent(Relation rel,
      Buffer buf,
      Buffer rbuf,
      BTStack stack,
      bool is_root,
      bool is_only)
{
 if (is_root)
 {
  Buffer rootbuf;

  Assert(stack == ((void*)0));
  Assert(is_only);

  rootbuf = _bt_newroot(rel, buf, rbuf);

  _bt_relbuf(rel, rootbuf);
  _bt_relbuf(rel, rbuf);
  _bt_relbuf(rel, buf);
 }
 else
 {
  BlockNumber bknum = BufferGetBlockNumber(buf);
  BlockNumber rbknum = BufferGetBlockNumber(rbuf);
  Page page = BufferGetPage(buf);
  IndexTuple new_item;
  BTStackData fakestack;
  IndexTuple ritem;
  Buffer pbuf;

  if (stack == ((void*)0))
  {
   BTPageOpaque lpageop;

   elog(DEBUG2, "concurrent ROOT page split");
   lpageop = (BTPageOpaque) PageGetSpecialPointer(page);

   pbuf = _bt_get_endpoint(rel, lpageop->btpo.level + 1, 0,
         ((void*)0));

   stack = &fakestack;
   stack->bts_blkno = BufferGetBlockNumber(pbuf);
   stack->bts_offset = InvalidOffsetNumber;
   stack->bts_parent = ((void*)0);
   _bt_relbuf(rel, pbuf);
  }


  ritem = (IndexTuple) PageGetItem(page,
           PageGetItemId(page, P_HIKEY));


  new_item = CopyIndexTuple(ritem);
  BTreeInnerTupleSetDownLink(new_item, rbknum);
  pbuf = _bt_getstackbuf(rel, stack, bknum);





  _bt_relbuf(rel, rbuf);

  if (pbuf == InvalidBuffer)
   ereport(ERROR,
     (errcode(ERRCODE_INDEX_CORRUPTED),
      errmsg_internal("failed to re-find parent key in index \"%s\" for split pages %u/%u",
          RelationGetRelationName(rel), bknum, rbknum)));


  _bt_insertonpg(rel, ((void*)0), pbuf, buf, stack->bts_parent,
        new_item, stack->bts_offset + 1,
        is_only);


  pfree(new_item);
 }
}
