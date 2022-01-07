
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XLogRecPtr ;
typedef int Page ;
typedef int Buffer ;


 int BufferGetPage (int ) ;
 int GetFullPageWriteInfo (scalar_t__*,int*) ;
 scalar_t__ PageGetLSN (int ) ;

bool
XLogCheckBufferNeedsBackup(Buffer buffer)
{
 XLogRecPtr RedoRecPtr;
 bool doPageWrites;
 Page page;

 GetFullPageWriteInfo(&RedoRecPtr, &doPageWrites);

 page = BufferGetPage(buffer);

 if (doPageWrites && PageGetLSN(page) <= RedoRecPtr)
  return 1;

 return 0;
}
