
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ btpo_prev; scalar_t__ btpo_next; } ;
struct TYPE_13__ {int pivotsearch; } ;
typedef int Relation ;
typedef int Page ;
typedef int ItemId ;
typedef int IndexTuple ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;
typedef int * BTStack ;
typedef TYPE_1__* BTScanInsert ;
typedef TYPE_2__* BTPageOpaque ;


 int Assert (int) ;
 int BT_READ ;
 int BT_WRITE ;
 int BUFFER_LOCK_UNLOCK ;
 scalar_t__ BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 int CopyIndexTuple (int ) ;
 int ERRCODE_INDEX_CORRUPTED ;
 int LOG ;
 int LockBuffer (int ,int ) ;
 scalar_t__ P_FIRSTDATAKEY (TYPE_2__*) ;
 int P_HIKEY ;
 scalar_t__ P_INCOMPLETE_SPLIT (TYPE_2__*) ;
 scalar_t__ P_ISDELETED (TYPE_2__*) ;
 scalar_t__ P_ISHALFDEAD (TYPE_2__*) ;
 int P_ISLEAF (TYPE_2__*) ;
 scalar_t__ P_ISROOT (TYPE_2__*) ;
 int P_LEFTMOST (TYPE_2__*) ;
 scalar_t__ P_RIGHTMOST (TYPE_2__*) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int ) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int RelationGetRelationName (int ) ;
 int ReleaseBuffer (int ) ;
 int _bt_getbuf (int ,scalar_t__,int ) ;
 int _bt_mark_page_halfdead (int ,int ,int *) ;
 TYPE_1__* _bt_mkscankey (int ,int ) ;
 int _bt_relbuf (int ,int ) ;
 int * _bt_search (int ,TYPE_1__*,int *,int ,int *) ;
 int _bt_unlink_halfdead_page (int ,int ,int*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;

int
_bt_pagedel(Relation rel, Buffer buf)
{
 int ndeleted = 0;
 BlockNumber rightsib;
 bool rightsib_empty;
 Page page;
 BTPageOpaque opaque;
 BTStack stack = ((void*)0);

 for (;;)
 {
  page = BufferGetPage(buf);
  opaque = (BTPageOpaque) PageGetSpecialPointer(page);





  if (!P_ISLEAF(opaque))
  {
   if (P_ISHALFDEAD(opaque))
    ereport(LOG,
      (errcode(ERRCODE_INDEX_CORRUPTED),
       errmsg("index \"%s\" contains a half-dead internal page",
        RelationGetRelationName(rel)),
       errhint("This can be caused by an interrupted VACUUM in version 9.3 or older, before upgrade. Please REINDEX it.")));
   _bt_relbuf(rel, buf);
   return ndeleted;
  }
  if (P_RIGHTMOST(opaque) || P_ISROOT(opaque) || P_ISDELETED(opaque) ||
   P_FIRSTDATAKEY(opaque) <= PageGetMaxOffsetNumber(page) ||
   P_INCOMPLETE_SPLIT(opaque))
  {

   Assert(!P_ISHALFDEAD(opaque));

   _bt_relbuf(rel, buf);
   return ndeleted;
  }






  if (!P_ISHALFDEAD(opaque))
  {
   if (!stack)
   {
    BTScanInsert itup_key;
    ItemId itemid;
    IndexTuple targetkey;
    Buffer lbuf;
    BlockNumber leftsib;

    itemid = PageGetItemId(page, P_HIKEY);
    targetkey = CopyIndexTuple((IndexTuple) PageGetItem(page, itemid));

    leftsib = opaque->btpo_prev;





    LockBuffer(buf, BUFFER_LOCK_UNLOCK);







    if (!P_LEFTMOST(opaque))
    {
     BTPageOpaque lopaque;
     Page lpage;

     lbuf = _bt_getbuf(rel, leftsib, BT_READ);
     lpage = BufferGetPage(lbuf);
     lopaque = (BTPageOpaque) PageGetSpecialPointer(lpage);
     if (lopaque->btpo_next == BufferGetBlockNumber(buf) &&
      P_INCOMPLETE_SPLIT(lopaque))
     {
      ReleaseBuffer(buf);
      _bt_relbuf(rel, lbuf);
      return ndeleted;
     }
     _bt_relbuf(rel, lbuf);
    }


    itup_key = _bt_mkscankey(rel, targetkey);

    itup_key->pivotsearch = 1;
    stack = _bt_search(rel, itup_key, &lbuf, BT_READ, ((void*)0));

    _bt_relbuf(rel, lbuf);





    LockBuffer(buf, BT_WRITE);
    continue;
   }

   if (!_bt_mark_page_halfdead(rel, buf, stack))
   {
    _bt_relbuf(rel, buf);
    return ndeleted;
   }
  }






  rightsib_empty = 0;
  while (P_ISHALFDEAD(opaque))
  {

   if (!_bt_unlink_halfdead_page(rel, buf, &rightsib_empty))
   {

    return ndeleted;
   }
   ndeleted++;
  }

  rightsib = opaque->btpo_next;

  _bt_relbuf(rel, buf);





  CHECK_FOR_INTERRUPTS();
  if (!rightsib_empty)
   break;

  buf = _bt_getbuf(rel, rightsib, BT_WRITE);
 }

 return ndeleted;
}
