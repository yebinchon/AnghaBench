
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint32 ;
typedef int XLogRecPtr ;


 int Assert (int) ;
 int SizeOfXLogLongPHD ;
 int SizeOfXLogShortPHD ;
 int UsableBytesInPage ;
 int UsableBytesInSegment ;
 int XLByteToSeg (int,int,int ) ;
 int XLOG_BLCKSZ ;
 int XLogSegmentOffset (int,int ) ;
 int wal_segment_size ;

__attribute__((used)) static uint64
XLogRecPtrToBytePos(XLogRecPtr ptr)
{
 uint64 fullsegs;
 uint32 fullpages;
 uint32 offset;
 uint64 result;

 XLByteToSeg(ptr, fullsegs, wal_segment_size);

 fullpages = (XLogSegmentOffset(ptr, wal_segment_size)) / XLOG_BLCKSZ;
 offset = ptr % XLOG_BLCKSZ;

 if (fullpages == 0)
 {
  result = fullsegs * UsableBytesInSegment;
  if (offset > 0)
  {
   Assert(offset >= SizeOfXLogLongPHD);
   result += offset - SizeOfXLogLongPHD;
  }
 }
 else
 {
  result = fullsegs * UsableBytesInSegment +
   (XLOG_BLCKSZ - SizeOfXLogLongPHD) +
   (fullpages - 1) * UsableBytesInPage;
  if (offset > 0)
  {
   Assert(offset >= SizeOfXLogShortPHD);
   result += offset - SizeOfXLogShortPHD;
  }
 }

 return result;
}
