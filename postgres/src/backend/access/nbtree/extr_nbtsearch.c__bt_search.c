
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int level; } ;
struct TYPE_9__ {TYPE_1__ btpo; } ;
struct TYPE_8__ {struct TYPE_8__* bts_parent; int bts_offset; int bts_blkno; } ;
typedef int Snapshot ;
typedef int Relation ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int ItemId ;
typedef scalar_t__ IndexTuple ;
typedef int Buffer ;
typedef int BlockNumber ;
typedef int BTStackData ;
typedef TYPE_2__* BTStack ;
typedef int BTScanInsert ;
typedef TYPE_3__* BTPageOpaque ;


 int BT_READ ;
 int BT_WRITE ;
 int BTreeInnerTupleGetDownLink (scalar_t__) ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int BufferIsValid (int ) ;
 int LockBuffer (int ,int) ;
 scalar_t__ P_ISLEAF (TYPE_3__*) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int _bt_binsrch (int ,int ,int ) ;
 int _bt_getroot (int ,int) ;
 int _bt_moveright (int ,int ,int ,int,TYPE_2__*,int,int ) ;
 int _bt_relandgetbuf (int ,int ,int ,int) ;
 scalar_t__ palloc (int) ;

BTStack
_bt_search(Relation rel, BTScanInsert key, Buffer *bufP, int access,
     Snapshot snapshot)
{
 BTStack stack_in = ((void*)0);
 int page_access = BT_READ;


 *bufP = _bt_getroot(rel, access);


 if (!BufferIsValid(*bufP))
  return (BTStack) ((void*)0);


 for (;;)
 {
  Page page;
  BTPageOpaque opaque;
  OffsetNumber offnum;
  ItemId itemid;
  IndexTuple itup;
  BlockNumber blkno;
  BlockNumber par_blkno;
  BTStack new_stack;
  *bufP = _bt_moveright(rel, key, *bufP, (access == BT_WRITE), stack_in,
         page_access, snapshot);


  page = BufferGetPage(*bufP);
  opaque = (BTPageOpaque) PageGetSpecialPointer(page);
  if (P_ISLEAF(opaque))
   break;





  offnum = _bt_binsrch(rel, key, *bufP);
  itemid = PageGetItemId(page, offnum);
  itup = (IndexTuple) PageGetItem(page, itemid);
  blkno = BTreeInnerTupleGetDownLink(itup);
  par_blkno = BufferGetBlockNumber(*bufP);
  new_stack = (BTStack) palloc(sizeof(BTStackData));
  new_stack->bts_blkno = par_blkno;
  new_stack->bts_offset = offnum;
  new_stack->bts_parent = stack_in;






  if (opaque->btpo.level == 1 && access == BT_WRITE)
   page_access = BT_WRITE;


  *bufP = _bt_relandgetbuf(rel, *bufP, blkno, page_access);


  stack_in = new_stack;
 }






 if (access == BT_WRITE && page_access == BT_READ)
 {

  LockBuffer(*bufP, BUFFER_LOCK_UNLOCK);
  LockBuffer(*bufP, BT_WRITE);
  *bufP = _bt_moveright(rel, key, *bufP, 1, stack_in, BT_WRITE,
         snapshot);
 }

 return stack_in;
}
