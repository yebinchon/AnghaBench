
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_12__ {int btpo_flags; } ;
struct TYPE_11__ {int * btps_page; int btps_blkno; int * btps_lowkey; struct TYPE_11__* btps_next; int btps_level; } ;
struct TYPE_10__ {int index; } ;
typedef int * Page ;
typedef int BlockNumber ;
typedef TYPE_1__ BTWriteState ;
typedef TYPE_2__ BTPageState ;
typedef TYPE_3__* BTPageOpaque ;


 int Assert (int) ;
 int BLCKSZ ;
 int BTP_ROOT ;
 int BTREE_METAPAGE ;
 int BTreeInnerTupleSetDownLink (int *,int ) ;
 scalar_t__ BTreeTupleGetNAtts (int *,int ) ;
 scalar_t__ IndexRelationGetNumberOfKeyAttributes (int ) ;
 scalar_t__ P_LEFTMOST (TYPE_3__*) ;
 int P_NONE ;
 scalar_t__ PageGetSpecialPointer (int *) ;
 int _bt_blwritepage (TYPE_1__*,int *,int ) ;
 int _bt_buildadd (TYPE_1__*,TYPE_2__*,int *) ;
 int _bt_initmetapage (int *,int ,int ) ;
 int _bt_slideleft (int *) ;
 scalar_t__ palloc (int ) ;
 int pfree (int *) ;

__attribute__((used)) static void
_bt_uppershutdown(BTWriteState *wstate, BTPageState *state)
{
 BTPageState *s;
 BlockNumber rootblkno = P_NONE;
 uint32 rootlevel = 0;
 Page metapage;




 for (s = state; s != ((void*)0); s = s->btps_next)
 {
  BlockNumber blkno;
  BTPageOpaque opaque;

  blkno = s->btps_blkno;
  opaque = (BTPageOpaque) PageGetSpecialPointer(s->btps_page);
  if (s->btps_next == ((void*)0))
  {
   opaque->btpo_flags |= BTP_ROOT;
   rootblkno = blkno;
   rootlevel = s->btps_level;
  }
  else
  {
   Assert((BTreeTupleGetNAtts(s->btps_lowkey, wstate->index) <=
     IndexRelationGetNumberOfKeyAttributes(wstate->index) &&
     BTreeTupleGetNAtts(s->btps_lowkey, wstate->index) > 0) ||
       P_LEFTMOST(opaque));
   Assert(BTreeTupleGetNAtts(s->btps_lowkey, wstate->index) == 0 ||
       !P_LEFTMOST(opaque));
   BTreeInnerTupleSetDownLink(s->btps_lowkey, blkno);
   _bt_buildadd(wstate, s->btps_next, s->btps_lowkey);
   pfree(s->btps_lowkey);
   s->btps_lowkey = ((void*)0);
  }





  _bt_slideleft(s->btps_page);
  _bt_blwritepage(wstate, s->btps_page, s->btps_blkno);
  s->btps_page = ((void*)0);
 }







 metapage = (Page) palloc(BLCKSZ);
 _bt_initmetapage(metapage, rootblkno, rootlevel);
 _bt_blwritepage(wstate, metapage, BTREE_METAPAGE);
}
