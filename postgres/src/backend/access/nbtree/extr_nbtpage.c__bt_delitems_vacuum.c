
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lastBlockVacuumed; } ;
typedef TYPE_1__ xl_btree_vacuum ;
typedef int XLogRecPtr ;
struct TYPE_4__ {int btpo_flags; scalar_t__ btpo_cycleid; } ;
typedef int Relation ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int Buffer ;
typedef int BlockNumber ;
typedef TYPE_2__* BTPageOpaque ;


 int BTP_HAS_GARBAGE ;
 int BufferGetPage (int ) ;
 int END_CRIT_SECTION () ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int PageIndexMultiDelete (int ,int *,int) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_STANDARD ;
 int RM_BTREE_ID ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int SizeOfBtreeVacuum ;
 int XLOG_BTREE_VACUUM ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBufData (int ,char*,int) ;
 int XLogRegisterBuffer (int ,int ,int ) ;
 int XLogRegisterData (char*,int ) ;

void
_bt_delitems_vacuum(Relation rel, Buffer buf,
     OffsetNumber *itemnos, int nitems,
     BlockNumber lastBlockVacuumed)
{
 Page page = BufferGetPage(buf);
 BTPageOpaque opaque;


 START_CRIT_SECTION();


 if (nitems > 0)
  PageIndexMultiDelete(page, itemnos, nitems);





 opaque = (BTPageOpaque) PageGetSpecialPointer(page);
 opaque->btpo_cycleid = 0;
 opaque->btpo_flags &= ~BTP_HAS_GARBAGE;

 MarkBufferDirty(buf);


 if (RelationNeedsWAL(rel))
 {
  XLogRecPtr recptr;
  xl_btree_vacuum xlrec_vacuum;

  xlrec_vacuum.lastBlockVacuumed = lastBlockVacuumed;

  XLogBeginInsert();
  XLogRegisterBuffer(0, buf, REGBUF_STANDARD);
  XLogRegisterData((char *) &xlrec_vacuum, SizeOfBtreeVacuum);






  if (nitems > 0)
   XLogRegisterBufData(0, (char *) itemnos, nitems * sizeof(OffsetNumber));

  recptr = XLogInsert(RM_BTREE_ID, XLOG_BTREE_VACUUM);

  PageSetLSN(page, recptr);
 }

 END_CRIT_SECTION();
}
