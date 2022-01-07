
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nitems; int latestRemovedXid; } ;
typedef TYPE_1__ xl_btree_delete ;
typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_4__ {int btpo_flags; } ;
typedef int Relation ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int Buffer ;
typedef TYPE_2__* BTPageOpaque ;


 int Assert (int) ;
 int BTP_HAS_GARBAGE ;
 int BufferGetPage (int ) ;
 int END_CRIT_SECTION () ;
 int InvalidTransactionId ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int PageIndexMultiDelete (int ,int *,int) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_STANDARD ;
 int RM_BTREE_ID ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int SizeOfBtreeDelete ;
 int XLOG_BTREE_DELETE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int ,int ,int ) ;
 int XLogRegisterData (char*,int) ;
 scalar_t__ XLogStandbyInfoActive () ;
 int index_compute_xid_horizon_for_tuples (int ,int ,int ,int *,int) ;

void
_bt_delitems_delete(Relation rel, Buffer buf,
     OffsetNumber *itemnos, int nitems,
     Relation heapRel)
{
 Page page = BufferGetPage(buf);
 BTPageOpaque opaque;
 TransactionId latestRemovedXid = InvalidTransactionId;


 Assert(nitems > 0);

 if (XLogStandbyInfoActive() && RelationNeedsWAL(rel))
  latestRemovedXid =
   index_compute_xid_horizon_for_tuples(rel, heapRel, buf,
             itemnos, nitems);


 START_CRIT_SECTION();


 PageIndexMultiDelete(page, itemnos, nitems);
 opaque = (BTPageOpaque) PageGetSpecialPointer(page);
 opaque->btpo_flags &= ~BTP_HAS_GARBAGE;

 MarkBufferDirty(buf);


 if (RelationNeedsWAL(rel))
 {
  XLogRecPtr recptr;
  xl_btree_delete xlrec_delete;

  xlrec_delete.latestRemovedXid = latestRemovedXid;
  xlrec_delete.nitems = nitems;

  XLogBeginInsert();
  XLogRegisterBuffer(0, buf, REGBUF_STANDARD);
  XLogRegisterData((char *) &xlrec_delete, SizeOfBtreeDelete);






  XLogRegisterData((char *) itemnos, nitems * sizeof(OffsetNumber));

  recptr = XLogInsert(RM_BTREE_ID, XLOG_BTREE_DELETE);

  PageSetLSN(page, recptr);
 }

 END_CRIT_SECTION();
}
