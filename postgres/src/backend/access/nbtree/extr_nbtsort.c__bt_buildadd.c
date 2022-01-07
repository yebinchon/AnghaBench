
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


struct TYPE_30__ {void* btpo_next; void* btpo_prev; } ;
struct TYPE_29__ {scalar_t__ btps_lastoff; scalar_t__ btps_level; scalar_t__ btps_full; void* btps_blkno; scalar_t__ btps_page; TYPE_2__* btps_lowkey; struct TYPE_29__* btps_next; } ;
struct TYPE_28__ {int index; int inskey; int btws_pages_alloced; int heap; } ;
struct TYPE_27__ {int t_info; } ;
struct TYPE_26__ {int pd_lower; } ;
typedef scalar_t__ Size ;
typedef TYPE_1__* PageHeader ;
typedef scalar_t__ Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemPointerData ;
typedef int ItemIdData ;
typedef int * ItemId ;
typedef int Item ;
typedef int IndexTupleData ;
typedef TYPE_2__* IndexTuple ;
typedef void* BlockNumber ;
typedef TYPE_3__ BTWriteState ;
typedef TYPE_4__ BTPageState ;
typedef TYPE_5__* BTPageOpaque ;


 int Assert (int) ;
 scalar_t__ BTMaxItemSize (scalar_t__) ;
 int BTreeInnerTupleSetDownLink (TYPE_2__*,void*) ;
 scalar_t__ BTreeTupleGetNAtts (TYPE_2__*,int ) ;
 int BTreeTupleSetNAtts (TYPE_2__*,int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 TYPE_2__* CopyIndexTuple (TYPE_2__*) ;
 int ERROR ;
 scalar_t__ IndexRelationGetNumberOfKeyAttributes (int ) ;
 scalar_t__ IndexTupleSize (TYPE_2__*) ;
 scalar_t__ ItemIdGetLength (int *) ;
 int ItemIdSetUnused (int *) ;
 scalar_t__ MAXALIGN (int) ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 scalar_t__ OffsetNumberPrev (scalar_t__) ;
 scalar_t__ P_FIRSTKEY ;
 scalar_t__ P_HIKEY ;
 scalar_t__ P_LEFTMOST (TYPE_5__*) ;
 void* P_NONE ;
 scalar_t__ PageGetFreeSpace (scalar_t__) ;
 scalar_t__ PageGetItem (scalar_t__,int *) ;
 int * PageGetItemId (scalar_t__,scalar_t__) ;
 scalar_t__ PageGetSpecialPointer (scalar_t__) ;
 int PageIndexTupleOverwrite (scalar_t__,scalar_t__,int ,scalar_t__) ;
 scalar_t__ _bt_blnewpage (scalar_t__) ;
 int _bt_blwritepage (TYPE_3__*,scalar_t__,void*) ;
 int _bt_check_third_page (int ,int ,int,scalar_t__,TYPE_2__*) ;
 TYPE_4__* _bt_pagestate (TYPE_3__*,scalar_t__) ;
 int _bt_sortaddtup (scalar_t__,scalar_t__,TYPE_2__*,scalar_t__) ;
 TYPE_2__* _bt_truncate (int ,TYPE_2__*,TYPE_2__*,int ) ;
 int elog (int ,char*) ;
 TYPE_2__* palloc0 (int) ;
 int pfree (TYPE_2__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
_bt_buildadd(BTWriteState *wstate, BTPageState *state, IndexTuple itup)
{
 Page npage;
 BlockNumber nblkno;
 OffsetNumber last_off;
 Size pgspc;
 Size itupsz;
 bool isleaf;





 CHECK_FOR_INTERRUPTS();

 npage = state->btps_page;
 nblkno = state->btps_blkno;
 last_off = state->btps_lastoff;

 pgspc = PageGetFreeSpace(npage);
 itupsz = IndexTupleSize(itup);
 itupsz = MAXALIGN(itupsz);

 isleaf = (state->btps_level == 0);
 if (unlikely(itupsz > BTMaxItemSize(npage)))
  _bt_check_third_page(wstate->index, wstate->heap, isleaf, npage,
        itup);
 if (pgspc < itupsz + (isleaf ? MAXALIGN(sizeof(ItemPointerData)) : 0) ||
  (pgspc < state->btps_full && last_off > P_FIRSTKEY))
 {



  Page opage = npage;
  BlockNumber oblkno = nblkno;
  ItemId ii;
  ItemId hii;
  IndexTuple oitup;


  npage = _bt_blnewpage(state->btps_level);


  nblkno = wstate->btws_pages_alloced++;
  Assert(last_off > P_FIRSTKEY);
  ii = PageGetItemId(opage, last_off);
  oitup = (IndexTuple) PageGetItem(opage, ii);
  _bt_sortaddtup(npage, ItemIdGetLength(ii), oitup, P_FIRSTKEY);
  hii = PageGetItemId(opage, P_HIKEY);
  *hii = *ii;
  ItemIdSetUnused(ii);
  ((PageHeader) opage)->pd_lower -= sizeof(ItemIdData);

  if (isleaf)
  {
   IndexTuple lastleft;
   IndexTuple truncated;
   ii = PageGetItemId(opage, OffsetNumberPrev(last_off));
   lastleft = (IndexTuple) PageGetItem(opage, ii);

   truncated = _bt_truncate(wstate->index, lastleft, oitup,
          wstate->inskey);
   if (!PageIndexTupleOverwrite(opage, P_HIKEY, (Item) truncated,
           IndexTupleSize(truncated)))
    elog(ERROR, "failed to add high key to the index page");
   pfree(truncated);


   hii = PageGetItemId(opage, P_HIKEY);
   oitup = (IndexTuple) PageGetItem(opage, hii);
  }





  if (state->btps_next == ((void*)0))
   state->btps_next = _bt_pagestate(wstate, state->btps_level + 1);

  Assert((BTreeTupleGetNAtts(state->btps_lowkey, wstate->index) <=
    IndexRelationGetNumberOfKeyAttributes(wstate->index) &&
    BTreeTupleGetNAtts(state->btps_lowkey, wstate->index) > 0) ||
      P_LEFTMOST((BTPageOpaque) PageGetSpecialPointer(opage)));
  Assert(BTreeTupleGetNAtts(state->btps_lowkey, wstate->index) == 0 ||
      !P_LEFTMOST((BTPageOpaque) PageGetSpecialPointer(opage)));
  BTreeInnerTupleSetDownLink(state->btps_lowkey, oblkno);
  _bt_buildadd(wstate, state->btps_next, state->btps_lowkey);
  pfree(state->btps_lowkey);





  state->btps_lowkey = CopyIndexTuple(oitup);




  {
   BTPageOpaque oopaque = (BTPageOpaque) PageGetSpecialPointer(opage);
   BTPageOpaque nopaque = (BTPageOpaque) PageGetSpecialPointer(npage);

   oopaque->btpo_next = nblkno;
   nopaque->btpo_prev = oblkno;
   nopaque->btpo_next = P_NONE;
  }





  _bt_blwritepage(wstate, opage, oblkno);




  last_off = P_FIRSTKEY;
 }
 if (last_off == P_HIKEY)
 {
  Assert(state->btps_lowkey == ((void*)0));
  state->btps_lowkey = palloc0(sizeof(IndexTupleData));
  state->btps_lowkey->t_info = sizeof(IndexTupleData);
  BTreeTupleSetNAtts(state->btps_lowkey, 0);
 }




 last_off = OffsetNumberNext(last_off);
 _bt_sortaddtup(npage, itupsz, itup, last_off);

 state->btps_page = npage;
 state->btps_blkno = nblkno;
 state->btps_lastoff = last_off;
}
