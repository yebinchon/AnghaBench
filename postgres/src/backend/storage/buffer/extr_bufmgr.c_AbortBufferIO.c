
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_8__ {int blockNum; int forkNum; int rnode; } ;
struct TYPE_9__ {TYPE_1__ tag; } ;
typedef TYPE_2__ BufferDesc ;


 int Assert (int) ;
 int BM_DIRTY ;
 int BM_IO_ERROR ;
 int BM_IO_IN_PROGRESS ;
 int BM_VALID ;
 int BufferDescriptorGetIOLock (TYPE_2__*) ;
 int ERRCODE_IO_ERROR ;
 TYPE_2__* InProgressBuf ;
 scalar_t__ IsForInput ;
 int LWLockAcquire (int ,int ) ;
 int LW_EXCLUSIVE ;
 int LockBufHdr (TYPE_2__*) ;
 int TerminateBufferIO (TYPE_2__*,int,int) ;
 int UnlockBufHdr (TYPE_2__*,int) ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*,int ,char*) ;
 int pfree (char*) ;
 char* relpathperm (int ,int ) ;

void
AbortBufferIO(void)
{
 BufferDesc *buf = InProgressBuf;

 if (buf)
 {
  uint32 buf_state;







  LWLockAcquire(BufferDescriptorGetIOLock(buf), LW_EXCLUSIVE);

  buf_state = LockBufHdr(buf);
  Assert(buf_state & BM_IO_IN_PROGRESS);
  if (IsForInput)
  {
   Assert(!(buf_state & BM_DIRTY));


   Assert(!(buf_state & BM_VALID));
   UnlockBufHdr(buf, buf_state);
  }
  else
  {
   Assert(buf_state & BM_DIRTY);
   UnlockBufHdr(buf, buf_state);

   if (buf_state & BM_IO_ERROR)
   {

    char *path;

    path = relpathperm(buf->tag.rnode, buf->tag.forkNum);
    ereport(WARNING,
      (errcode(ERRCODE_IO_ERROR),
       errmsg("could not write block %u of %s",
        buf->tag.blockNum, path),
       errdetail("Multiple failures --- write error might be permanent.")));
    pfree(path);
   }
  }
  TerminateBufferIO(buf, 0, BM_IO_ERROR);
 }
}
