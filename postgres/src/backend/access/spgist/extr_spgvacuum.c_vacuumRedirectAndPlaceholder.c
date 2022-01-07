
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t nToPlaceholder; scalar_t__ firstPlaceholder; int newestRedirectXid; } ;
typedef TYPE_1__ spgxlogVacuumRedirect ;
typedef int XLogRecPtr ;
struct TYPE_7__ {scalar_t__ tupstate; int pointer; int xid; } ;
struct TYPE_6__ {scalar_t__ nRedirection; scalar_t__ nPlaceholder; } ;
typedef TYPE_2__* SpGistPageOpaque ;
typedef TYPE_3__* SpGistDeadTuple ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int Buffer ;


 int Assert (int) ;
 int BufferGetPage (int ) ;
 int END_CRIT_SECTION () ;
 scalar_t__ FirstOffsetNumber ;
 scalar_t__ InvalidOffsetNumber ;
 int InvalidTransactionId ;
 int ItemPointerSetInvalid (int *) ;
 int MarkBufferDirty (int ) ;
 int MaxIndexTuplesPerPage ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int PageIndexMultiDelete (int ,scalar_t__*,scalar_t__) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_STANDARD ;
 int RM_SPGIST_ID ;
 int RecentGlobalXmin ;
 scalar_t__ RelationNeedsWAL (int ) ;
 scalar_t__ SPGIST_PLACEHOLDER ;
 scalar_t__ SPGIST_REDIRECT ;
 int START_CRIT_SECTION () ;
 int SizeOfSpgxlogVacuumRedirect ;
 TYPE_2__* SpGistPageGetOpaque (int ) ;
 int TransactionIdIsValid (int ) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 int XLOG_SPGIST_VACUUM_REDIRECT ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int ,int ,int ) ;
 int XLogRegisterData (char*,int) ;

__attribute__((used)) static void
vacuumRedirectAndPlaceholder(Relation index, Buffer buffer)
{
 Page page = BufferGetPage(buffer);
 SpGistPageOpaque opaque = SpGistPageGetOpaque(page);
 OffsetNumber i,
    max = PageGetMaxOffsetNumber(page),
    firstPlaceholder = InvalidOffsetNumber;
 bool hasNonPlaceholder = 0;
 bool hasUpdate = 0;
 OffsetNumber itemToPlaceholder[MaxIndexTuplesPerPage];
 OffsetNumber itemnos[MaxIndexTuplesPerPage];
 spgxlogVacuumRedirect xlrec;

 xlrec.nToPlaceholder = 0;
 xlrec.newestRedirectXid = InvalidTransactionId;

 START_CRIT_SECTION();





 for (i = max;
   i >= FirstOffsetNumber &&
   (opaque->nRedirection > 0 || !hasNonPlaceholder);
   i--)
 {
  SpGistDeadTuple dt;

  dt = (SpGistDeadTuple) PageGetItem(page, PageGetItemId(page, i));

  if (dt->tupstate == SPGIST_REDIRECT &&
   TransactionIdPrecedes(dt->xid, RecentGlobalXmin))
  {
   dt->tupstate = SPGIST_PLACEHOLDER;
   Assert(opaque->nRedirection > 0);
   opaque->nRedirection--;
   opaque->nPlaceholder++;


   if (!TransactionIdIsValid(xlrec.newestRedirectXid) ||
    TransactionIdPrecedes(xlrec.newestRedirectXid, dt->xid))
    xlrec.newestRedirectXid = dt->xid;

   ItemPointerSetInvalid(&dt->pointer);

   itemToPlaceholder[xlrec.nToPlaceholder] = i;
   xlrec.nToPlaceholder++;

   hasUpdate = 1;
  }

  if (dt->tupstate == SPGIST_PLACEHOLDER)
  {
   if (!hasNonPlaceholder)
    firstPlaceholder = i;
  }
  else
  {
   hasNonPlaceholder = 1;
  }
 }






 if (firstPlaceholder != InvalidOffsetNumber)
 {



  for (i = firstPlaceholder; i <= max; i++)
   itemnos[i - firstPlaceholder] = i;

  i = max - firstPlaceholder + 1;
  Assert(opaque->nPlaceholder >= i);
  opaque->nPlaceholder -= i;


  PageIndexMultiDelete(page, itemnos, i);

  hasUpdate = 1;
 }

 xlrec.firstPlaceholder = firstPlaceholder;

 if (hasUpdate)
  MarkBufferDirty(buffer);

 if (hasUpdate && RelationNeedsWAL(index))
 {
  XLogRecPtr recptr;

  XLogBeginInsert();

  XLogRegisterData((char *) &xlrec, SizeOfSpgxlogVacuumRedirect);
  XLogRegisterData((char *) itemToPlaceholder,
       sizeof(OffsetNumber) * xlrec.nToPlaceholder);

  XLogRegisterBuffer(0, buffer, REGBUF_STANDARD);

  recptr = XLogInsert(RM_SPGIST_ID, XLOG_SPGIST_VACUUM_REDIRECT);

  PageSetLSN(page, recptr);
 }

 END_CRIT_SECTION();
}
