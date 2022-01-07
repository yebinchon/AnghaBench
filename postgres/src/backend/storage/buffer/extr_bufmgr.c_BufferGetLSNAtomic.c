
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int XLogRecPtr ;
typedef int BufferDesc ;
typedef scalar_t__ Buffer ;


 int Assert (int ) ;
 char* BufferGetPage (scalar_t__) ;
 scalar_t__ BufferIsLocal (scalar_t__) ;
 int BufferIsPinned (scalar_t__) ;
 int BufferIsValid (scalar_t__) ;
 int * GetBufferDescriptor (scalar_t__) ;
 int LockBufHdr (int *) ;
 int PageGetLSN (char*) ;
 int UnlockBufHdr (int *,int ) ;
 int XLogHintBitIsNeeded () ;

XLogRecPtr
BufferGetLSNAtomic(Buffer buffer)
{
 BufferDesc *bufHdr = GetBufferDescriptor(buffer - 1);
 char *page = BufferGetPage(buffer);
 XLogRecPtr lsn;
 uint32 buf_state;




 if (!XLogHintBitIsNeeded() || BufferIsLocal(buffer))
  return PageGetLSN(page);


 Assert(BufferIsValid(buffer));
 Assert(BufferIsPinned(buffer));

 buf_state = LockBufHdr(bufHdr);
 lsn = PageGetLSN(page);
 UnlockBufHdr(bufHdr, buf_state);

 return lsn;
}
