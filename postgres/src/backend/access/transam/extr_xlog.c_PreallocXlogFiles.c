
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef scalar_t__ uint32 ;
typedef int XLogSegNo ;
typedef scalar_t__ XLogRecPtr ;
struct TYPE_2__ {int ckpt_segs_added; } ;


 TYPE_1__ CheckpointStats ;
 int XLByteToPrevSeg (scalar_t__,int ,double) ;
 int XLogFileInit (int ,int*,int) ;
 scalar_t__ XLogSegmentOffset (scalar_t__,double) ;
 int close (int) ;
 double wal_segment_size ;

__attribute__((used)) static void
PreallocXlogFiles(XLogRecPtr endptr)
{
 XLogSegNo _logSegNo;
 int lf;
 bool use_existent;
 uint64 offset;

 XLByteToPrevSeg(endptr, _logSegNo, wal_segment_size);
 offset = XLogSegmentOffset(endptr - 1, wal_segment_size);
 if (offset >= (uint32) (0.75 * wal_segment_size))
 {
  _logSegNo++;
  use_existent = 1;
  lf = XLogFileInit(_logSegNo, &use_existent, 1);
  close(lf);
  if (!use_existent)
   CheckpointStats.ckpt_segs_added++;
 }
}
