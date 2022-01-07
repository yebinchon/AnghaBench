
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ rightLink; int deleteXid; int parentOffset; } ;
typedef TYPE_2__ ginxlogDeletePage ;
typedef int XLogRecPtr ;
struct TYPE_9__ {scalar_t__ rightlink; int flags; } ;
struct TYPE_8__ {TYPE_1__* result; int index; int strategy; } ;
struct TYPE_6__ {int pages_deleted; } ;
typedef int PostingItem ;
typedef int Page ;
typedef int OffsetNumber ;
typedef TYPE_3__ GinVacuumState ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BufferGetPage (int ) ;
 int END_CRIT_SECTION () ;
 int GIN_DELETED ;
 int GIN_EXCLUSIVE ;
 int * GinDataPageGetPostingItem (int ,int ) ;
 int GinPageDeletePostingItem (int ,int ) ;
 int GinPageGetDeleteXid (int ) ;
 TYPE_5__* GinPageGetOpaque (int ) ;
 int GinPageSetDeleteXid (int ,int ) ;
 int LockBuffer (int ,int ) ;
 int MAIN_FORKNUM ;
 int MarkBufferDirty (int ) ;
 int PageSetLSN (int ,int ) ;
 scalar_t__ PostingItemGetBlockNumber (int *) ;
 int PredicateLockPageCombine (int ,scalar_t__,scalar_t__) ;
 int RBM_NORMAL ;
 int REGBUF_STANDARD ;
 int RM_GIN_ID ;
 int ReadBufferExtended (int ,int ,scalar_t__,int ,int ) ;
 int ReadNewTransactionId () ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int ReleaseBuffer (int ) ;
 int START_CRIT_SECTION () ;
 int UnlockReleaseBuffer (int ) ;
 int XLOG_GIN_DELETE_PAGE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int,int ,int ) ;
 int XLogRegisterData (char*,int) ;

__attribute__((used)) static void
ginDeletePage(GinVacuumState *gvs, BlockNumber deleteBlkno, BlockNumber leftBlkno,
     BlockNumber parentBlkno, OffsetNumber myoff, bool isParentRoot)
{
 Buffer dBuffer;
 Buffer lBuffer;
 Buffer pBuffer;
 Page page,
    parentPage;
 BlockNumber rightlink;
 lBuffer = ReadBufferExtended(gvs->index, MAIN_FORKNUM, leftBlkno,
         RBM_NORMAL, gvs->strategy);
 dBuffer = ReadBufferExtended(gvs->index, MAIN_FORKNUM, deleteBlkno,
         RBM_NORMAL, gvs->strategy);
 pBuffer = ReadBufferExtended(gvs->index, MAIN_FORKNUM, parentBlkno,
         RBM_NORMAL, gvs->strategy);

 LockBuffer(lBuffer, GIN_EXCLUSIVE);

 page = BufferGetPage(dBuffer);
 rightlink = GinPageGetOpaque(page)->rightlink;


 GinPageSetDeleteXid(page, ReadNewTransactionId());





 PredicateLockPageCombine(gvs->index, deleteBlkno, rightlink);

 START_CRIT_SECTION();


 page = BufferGetPage(lBuffer);
 GinPageGetOpaque(page)->rightlink = rightlink;


 parentPage = BufferGetPage(pBuffer);
 GinPageDeletePostingItem(parentPage, myoff);

 page = BufferGetPage(dBuffer);





 GinPageGetOpaque(page)->flags = GIN_DELETED;

 MarkBufferDirty(pBuffer);
 MarkBufferDirty(lBuffer);
 MarkBufferDirty(dBuffer);

 if (RelationNeedsWAL(gvs->index))
 {
  XLogRecPtr recptr;
  ginxlogDeletePage data;
  XLogBeginInsert();
  XLogRegisterBuffer(0, dBuffer, 0);
  XLogRegisterBuffer(1, pBuffer, REGBUF_STANDARD);
  XLogRegisterBuffer(2, lBuffer, 0);

  data.parentOffset = myoff;
  data.rightLink = GinPageGetOpaque(page)->rightlink;
  data.deleteXid = GinPageGetDeleteXid(page);

  XLogRegisterData((char *) &data, sizeof(ginxlogDeletePage));

  recptr = XLogInsert(RM_GIN_ID, XLOG_GIN_DELETE_PAGE);
  PageSetLSN(page, recptr);
  PageSetLSN(parentPage, recptr);
  PageSetLSN(BufferGetPage(lBuffer), recptr);
 }

 ReleaseBuffer(pBuffer);
 UnlockReleaseBuffer(lBuffer);
 ReleaseBuffer(dBuffer);

 END_CRIT_SECTION();

 gvs->result->pages_deleted++;
}
