
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16 ;
typedef scalar_t__ XLogRecPtr ;
struct TYPE_6__ {int delayChkpt; } ;
struct TYPE_5__ {int data; } ;
struct TYPE_4__ {int pd_lower; int pd_upper; } ;
typedef int RelFileNode ;
typedef TYPE_1__* PageHeader ;
typedef scalar_t__ Page ;
typedef TYPE_2__ PGAlignedBlock ;
typedef int ForkNumber ;
typedef int Buffer ;
typedef int BlockNumber ;


 int Assert (int ) ;
 int BLCKSZ ;
 scalar_t__ BufferGetBlock (int ) ;
 scalar_t__ BufferGetLSNAtomic (int ) ;
 scalar_t__ BufferGetPage (int ) ;
 int BufferGetTag (int ,int *,int *,int *) ;
 scalar_t__ GetRedoRecPtr () ;
 scalar_t__ InvalidXLogRecPtr ;
 TYPE_3__* MyPgXact ;
 int REGBUF_FORCE_IMAGE ;
 int REGBUF_STANDARD ;
 int RM_XLOG_ID ;
 int XLOG_FPI_FOR_HINT ;
 int XLogBeginInsert () ;
 scalar_t__ XLogInsert (int ,int ) ;
 int XLogRegisterBlock (int ,int *,int ,int ,int,int) ;
 int memcpy (int,char*,int) ;

XLogRecPtr
XLogSaveBufferForHint(Buffer buffer, bool buffer_std)
{
 XLogRecPtr recptr = InvalidXLogRecPtr;
 XLogRecPtr lsn;
 XLogRecPtr RedoRecPtr;




 Assert(MyPgXact->delayChkpt);




 RedoRecPtr = GetRedoRecPtr();







 lsn = BufferGetLSNAtomic(buffer);

 if (lsn <= RedoRecPtr)
 {
  int flags;
  PGAlignedBlock copied_buffer;
  char *origdata = (char *) BufferGetBlock(buffer);
  RelFileNode rnode;
  ForkNumber forkno;
  BlockNumber blkno;






  if (buffer_std)
  {

   Page page = BufferGetPage(buffer);
   uint16 lower = ((PageHeader) page)->pd_lower;
   uint16 upper = ((PageHeader) page)->pd_upper;

   memcpy(copied_buffer.data, origdata, lower);
   memcpy(copied_buffer.data + upper, origdata + upper, BLCKSZ - upper);
  }
  else
   memcpy(copied_buffer.data, origdata, BLCKSZ);

  XLogBeginInsert();

  flags = REGBUF_FORCE_IMAGE;
  if (buffer_std)
   flags |= REGBUF_STANDARD;

  BufferGetTag(buffer, &rnode, &forkno, &blkno);
  XLogRegisterBlock(0, &rnode, forkno, blkno, copied_buffer.data, flags);

  recptr = XLogInsert(RM_XLOG_ID, XLOG_FPI_FOR_HINT);
 }

 return recptr;
}
