
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int free_space; } ;
typedef TYPE_1__ pgstattuple_type ;
typedef int Relation ;
typedef int Page ;
typedef int BufferAccessStrategy ;
typedef int Buffer ;
typedef int BlockNumber ;
typedef scalar_t__ BTPageOpaque ;


 scalar_t__ BLCKSZ ;
 int BT_READ ;
 int BufferGetPage (int ) ;
 int LockBuffer (int ,int ) ;
 int MAIN_FORKNUM ;
 int P_FIRSTDATAKEY (scalar_t__) ;
 scalar_t__ P_IGNORE (scalar_t__) ;
 scalar_t__ P_ISLEAF (scalar_t__) ;
 int PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 scalar_t__ PageIsNew (int ) ;
 int RBM_NORMAL ;
 int ReadBufferExtended (int ,int ,int ,int ,int ) ;
 int _bt_relbuf (int ,int ) ;
 int pgstat_index_page (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static void
pgstat_btree_page(pgstattuple_type *stat, Relation rel, BlockNumber blkno,
      BufferAccessStrategy bstrategy)
{
 Buffer buf;
 Page page;

 buf = ReadBufferExtended(rel, MAIN_FORKNUM, blkno, RBM_NORMAL, bstrategy);
 LockBuffer(buf, BT_READ);
 page = BufferGetPage(buf);


 if (PageIsNew(page))
 {

  stat->free_space += BLCKSZ;
 }
 else
 {
  BTPageOpaque opaque;

  opaque = (BTPageOpaque) PageGetSpecialPointer(page);
  if (P_IGNORE(opaque))
  {

   stat->free_space += BLCKSZ;
  }
  else if (P_ISLEAF(opaque))
  {
   pgstat_index_page(stat, page, P_FIRSTDATAKEY(opaque),
         PageGetMaxOffsetNumber(page));
  }
  else
  {

  }
 }

 _bt_relbuf(rel, buf);
}
