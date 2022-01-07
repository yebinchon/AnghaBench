
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t nDelete; int stateSrc; } ;
typedef TYPE_2__ spgxlogVacuumRoot ;
struct TYPE_8__ {int spgstate; TYPE_1__* stats; int callback_state; scalar_t__ (* callback ) (int *,int ) ;} ;
typedef TYPE_3__ spgBulkDeleteState ;
typedef int XLogRecPtr ;
struct TYPE_9__ {scalar_t__ tupstate; int heapPtr; } ;
struct TYPE_6__ {int tuples_removed; int num_index_tuples; } ;
typedef TYPE_4__* SpGistLeafTuple ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int Buffer ;


 int Assert (int ) ;
 int BufferGetPage (int ) ;
 int END_CRIT_SECTION () ;
 int ERROR ;
 scalar_t__ FirstOffsetNumber ;
 int ItemPointerIsValid (int *) ;
 int MarkBufferDirty (int ) ;
 int MaxIndexTuplesPerPage ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int PageIndexMultiDelete (int ,scalar_t__*,size_t) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_STANDARD ;
 int RM_SPGIST_ID ;
 scalar_t__ RelationNeedsWAL (int ) ;
 scalar_t__ SPGIST_LIVE ;
 int START_CRIT_SECTION () ;
 int STORE_STATE (int *,int ) ;
 int SizeOfSpgxlogVacuumRoot ;
 int XLOG_SPGIST_VACUUM_ROOT ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int ,int ,int ) ;
 int XLogRegisterData (char*,int) ;
 int elog (int ,char*,scalar_t__) ;
 scalar_t__ stub1 (int *,int ) ;

__attribute__((used)) static void
vacuumLeafRoot(spgBulkDeleteState *bds, Relation index, Buffer buffer)
{
 Page page = BufferGetPage(buffer);
 spgxlogVacuumRoot xlrec;
 OffsetNumber toDelete[MaxIndexTuplesPerPage];
 OffsetNumber i,
    max = PageGetMaxOffsetNumber(page);

 xlrec.nDelete = 0;


 for (i = FirstOffsetNumber; i <= max; i++)
 {
  SpGistLeafTuple lt;

  lt = (SpGistLeafTuple) PageGetItem(page,
             PageGetItemId(page, i));
  if (lt->tupstate == SPGIST_LIVE)
  {
   Assert(ItemPointerIsValid(&lt->heapPtr));

   if (bds->callback(&lt->heapPtr, bds->callback_state))
   {
    bds->stats->tuples_removed += 1;
    toDelete[xlrec.nDelete] = i;
    xlrec.nDelete++;
   }
   else
   {
    bds->stats->num_index_tuples += 1;
   }
  }
  else
  {

   elog(ERROR, "unexpected SPGiST tuple state: %d",
     lt->tupstate);
  }
 }

 if (xlrec.nDelete == 0)
  return;


 START_CRIT_SECTION();


 PageIndexMultiDelete(page, toDelete, xlrec.nDelete);

 MarkBufferDirty(buffer);

 if (RelationNeedsWAL(index))
 {
  XLogRecPtr recptr;

  XLogBeginInsert();


  STORE_STATE(&bds->spgstate, xlrec.stateSrc);

  XLogRegisterData((char *) &xlrec, SizeOfSpgxlogVacuumRoot);

  XLogRegisterData((char *) toDelete,
       sizeof(OffsetNumber) * xlrec.nDelete);

  XLogRegisterBuffer(0, buffer, REGBUF_STANDARD);

  recptr = XLogInsert(RM_SPGIST_ID, XLOG_SPGIST_VACUUM_ROOT);

  PageSetLSN(page, recptr);
 }

 END_CRIT_SECTION();
}
