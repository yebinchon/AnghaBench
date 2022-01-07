
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NBuffers ;
 int XLOG_BLCKSZ ;
 int wal_segment_size ;

__attribute__((used)) static int
XLOGChooseNumBuffers(void)
{
 int xbuffers;

 xbuffers = NBuffers / 32;
 if (xbuffers > (wal_segment_size / XLOG_BLCKSZ))
  xbuffers = (wal_segment_size / XLOG_BLCKSZ);
 if (xbuffers < 8)
  xbuffers = 8;
 return xbuffers;
}
