
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int btm_root; } ;
struct TYPE_7__ {int btpo_next; } ;
typedef int Relation ;
typedef int Page ;
typedef int Buffer ;
typedef int BTStack ;
typedef TYPE_1__* BTPageOpaque ;
typedef TYPE_2__ BTMetaPageData ;


 int Assert (int ) ;
 TYPE_2__* BTPageGetMeta (int ) ;
 int BTREE_METAPAGE ;
 int BT_WRITE ;
 int BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int DEBUG1 ;
 int P_INCOMPLETE_SPLIT (TYPE_1__*) ;
 scalar_t__ P_LEFTMOST (TYPE_1__*) ;
 scalar_t__ P_RIGHTMOST (TYPE_1__*) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int _bt_getbuf (int ,int ,int ) ;
 int _bt_insert_parent (int ,int ,int ,int ,int,int) ;
 int _bt_relbuf (int ,int ) ;
 int elog (int ,char*,int ,int ) ;

void
_bt_finish_split(Relation rel, Buffer lbuf, BTStack stack)
{
 Page lpage = BufferGetPage(lbuf);
 BTPageOpaque lpageop = (BTPageOpaque) PageGetSpecialPointer(lpage);
 Buffer rbuf;
 Page rpage;
 BTPageOpaque rpageop;
 bool was_root;
 bool was_only;

 Assert(P_INCOMPLETE_SPLIT(lpageop));


 rbuf = _bt_getbuf(rel, lpageop->btpo_next, BT_WRITE);
 rpage = BufferGetPage(rbuf);
 rpageop = (BTPageOpaque) PageGetSpecialPointer(rpage);


 if (!stack)
 {
  Buffer metabuf;
  Page metapg;
  BTMetaPageData *metad;


  metabuf = _bt_getbuf(rel, BTREE_METAPAGE, BT_WRITE);
  metapg = BufferGetPage(metabuf);
  metad = BTPageGetMeta(metapg);

  was_root = (metad->btm_root == BufferGetBlockNumber(lbuf));

  _bt_relbuf(rel, metabuf);
 }
 else
  was_root = 0;


 was_only = (P_LEFTMOST(lpageop) && P_RIGHTMOST(rpageop));

 elog(DEBUG1, "finishing incomplete split of %u/%u",
   BufferGetBlockNumber(lbuf), BufferGetBlockNumber(rbuf));

 _bt_insert_parent(rel, lbuf, rbuf, stack, was_root, was_only);
}
