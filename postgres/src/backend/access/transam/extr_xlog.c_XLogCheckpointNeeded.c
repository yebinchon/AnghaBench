
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64 ;
typedef scalar_t__ XLogSegNo ;


 int CheckPointSegments ;
 int RedoRecPtr ;
 int XLByteToSeg (int ,scalar_t__,int ) ;
 int wal_segment_size ;

__attribute__((used)) static bool
XLogCheckpointNeeded(XLogSegNo new_segno)
{
 XLogSegNo old_segno;

 XLByteToSeg(RedoRecPtr, old_segno, wal_segment_size);

 if (new_segno >= old_segno + (uint64) (CheckPointSegments - 1))
  return 1;
 return 0;
}
