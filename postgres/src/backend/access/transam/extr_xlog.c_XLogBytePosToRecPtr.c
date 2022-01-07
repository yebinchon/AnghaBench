
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint32 ;
typedef int XLogRecPtr ;


 int SizeOfXLogLongPHD ;
 int SizeOfXLogShortPHD ;
 int UsableBytesInPage ;
 int UsableBytesInSegment ;
 int XLOG_BLCKSZ ;
 int XLogSegNoOffsetToRecPtr (int,int,int ,int ) ;
 int wal_segment_size ;

__attribute__((used)) static XLogRecPtr
XLogBytePosToRecPtr(uint64 bytepos)
{
 uint64 fullsegs;
 uint64 fullpages;
 uint64 bytesleft;
 uint32 seg_offset;
 XLogRecPtr result;

 fullsegs = bytepos / UsableBytesInSegment;
 bytesleft = bytepos % UsableBytesInSegment;

 if (bytesleft < XLOG_BLCKSZ - SizeOfXLogLongPHD)
 {

  seg_offset = bytesleft + SizeOfXLogLongPHD;
 }
 else
 {

  seg_offset = XLOG_BLCKSZ;
  bytesleft -= XLOG_BLCKSZ - SizeOfXLogLongPHD;

  fullpages = bytesleft / UsableBytesInPage;
  bytesleft = bytesleft % UsableBytesInPage;

  seg_offset += fullpages * XLOG_BLCKSZ + bytesleft + SizeOfXLogShortPHD;
 }

 XLogSegNoOffsetToRecPtr(fullsegs, seg_offset, wal_segment_size, result);

 return result;
}
