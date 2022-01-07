
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t int32 ;
struct TYPE_4__ {size_t ntuples; scalar_t__ rightlink; } ;
typedef TYPE_1__ ginxlogInsertListPage ;
typedef int XLogRecPtr ;
struct TYPE_6__ {int maxoff; scalar_t__ rightlink; } ;
struct TYPE_5__ {char* data; } ;
typedef int Relation ;
typedef int Page ;
typedef TYPE_2__ PGAlignedBlock ;
typedef int OffsetNumber ;
typedef int Item ;
typedef scalar_t__ IndexTuple ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 size_t BLCKSZ ;
 int BufferGetPage (int ) ;
 int END_CRIT_SECTION () ;
 int ERROR ;
 int FirstOffsetNumber ;
 int GIN_LIST ;
 int GinInitBuffer (int ,int ) ;
 TYPE_3__* GinPageGetOpaque (int ) ;
 int GinPageSetFullRow (int ) ;
 int IndexTupleSize (scalar_t__) ;
 scalar_t__ InvalidBlockNumber ;
 int InvalidOffsetNumber ;
 int MarkBufferDirty (int ) ;
 int PageAddItem (int ,int ,int,int ,int,int) ;
 size_t PageGetExactFreeSpace (int ) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_WILL_INIT ;
 int RM_GIN_ID ;
 int RelationGetRelationName (int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int UnlockReleaseBuffer (int ) ;
 int XLOG_GIN_INSERT_LISTPAGE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBufData (int ,char*,size_t) ;
 int XLogRegisterBuffer (int ,int ,int ) ;
 int XLogRegisterData (char*,int) ;
 int elog (int ,char*,int ) ;
 int memcpy (char*,scalar_t__,int) ;

__attribute__((used)) static int32
writeListPage(Relation index, Buffer buffer,
     IndexTuple *tuples, int32 ntuples, BlockNumber rightlink)
{
 Page page = BufferGetPage(buffer);
 int32 i,
    freesize,
    size = 0;
 OffsetNumber l,
    off;
 PGAlignedBlock workspace;
 char *ptr;

 START_CRIT_SECTION();

 GinInitBuffer(buffer, GIN_LIST);

 off = FirstOffsetNumber;
 ptr = workspace.data;

 for (i = 0; i < ntuples; i++)
 {
  int this_size = IndexTupleSize(tuples[i]);

  memcpy(ptr, tuples[i], this_size);
  ptr += this_size;
  size += this_size;

  l = PageAddItem(page, (Item) tuples[i], this_size, off, 0, 0);

  if (l == InvalidOffsetNumber)
   elog(ERROR, "failed to add item to index page in \"%s\"",
     RelationGetRelationName(index));

  off++;
 }

 Assert(size <= BLCKSZ);

 GinPageGetOpaque(page)->rightlink = rightlink;






 if (rightlink == InvalidBlockNumber)
 {
  GinPageSetFullRow(page);
  GinPageGetOpaque(page)->maxoff = 1;
 }
 else
 {
  GinPageGetOpaque(page)->maxoff = 0;
 }

 MarkBufferDirty(buffer);

 if (RelationNeedsWAL(index))
 {
  ginxlogInsertListPage data;
  XLogRecPtr recptr;

  data.rightlink = rightlink;
  data.ntuples = ntuples;

  XLogBeginInsert();
  XLogRegisterData((char *) &data, sizeof(ginxlogInsertListPage));

  XLogRegisterBuffer(0, buffer, REGBUF_WILL_INIT);
  XLogRegisterBufData(0, workspace.data, size);

  recptr = XLogInsert(RM_GIN_ID, XLOG_GIN_INSERT_LISTPAGE);
  PageSetLSN(page, recptr);
 }


 freesize = PageGetExactFreeSpace(page);

 UnlockReleaseBuffer(buffer);

 END_CRIT_SECTION();

 return freesize;
}
