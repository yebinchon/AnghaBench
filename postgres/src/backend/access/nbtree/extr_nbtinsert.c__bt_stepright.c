
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int bounds_valid; int buf; } ;
struct TYPE_7__ {int btpo_next; } ;
typedef int Relation ;
typedef int Page ;
typedef int Buffer ;
typedef int BlockNumber ;
typedef int BTStack ;
typedef TYPE_1__* BTPageOpaque ;
typedef TYPE_2__* BTInsertState ;


 int BT_WRITE ;
 int BufferGetPage (int ) ;
 int ERROR ;
 int InvalidBuffer ;
 int P_IGNORE (TYPE_1__*) ;
 scalar_t__ P_INCOMPLETE_SPLIT (TYPE_1__*) ;
 scalar_t__ P_RIGHTMOST (TYPE_1__*) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int RelationGetRelationName (int ) ;
 int _bt_finish_split (int ,int ,int ) ;
 int _bt_relandgetbuf (int ,int ,int ,int ) ;
 int _bt_relbuf (int ,int ) ;
 int elog (int ,char*,int ) ;

__attribute__((used)) static void
_bt_stepright(Relation rel, BTInsertState insertstate, BTStack stack)
{
 Page page;
 BTPageOpaque lpageop;
 Buffer rbuf;
 BlockNumber rblkno;

 page = BufferGetPage(insertstate->buf);
 lpageop = (BTPageOpaque) PageGetSpecialPointer(page);

 rbuf = InvalidBuffer;
 rblkno = lpageop->btpo_next;
 for (;;)
 {
  rbuf = _bt_relandgetbuf(rel, rbuf, rblkno, BT_WRITE);
  page = BufferGetPage(rbuf);
  lpageop = (BTPageOpaque) PageGetSpecialPointer(page);







  if (P_INCOMPLETE_SPLIT(lpageop))
  {
   _bt_finish_split(rel, rbuf, stack);
   rbuf = InvalidBuffer;
   continue;
  }

  if (!P_IGNORE(lpageop))
   break;
  if (P_RIGHTMOST(lpageop))
   elog(ERROR, "fell off the end of index \"%s\"",
     RelationGetRelationName(rel));

  rblkno = lpageop->btpo_next;
 }

 _bt_relbuf(rel, insertstate->buf);
 insertstate->buf = rbuf;
 insertstate->bounds_valid = 0;
}
