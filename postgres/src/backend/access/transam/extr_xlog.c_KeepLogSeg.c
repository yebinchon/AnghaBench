
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogSegNo ;
typedef scalar_t__ XLogRecPtr ;


 scalar_t__ InvalidXLogRecPtr ;
 int XLByteToSeg (scalar_t__,int,int ) ;
 scalar_t__ XLogGetReplicationSlotMinimumLSN () ;
 scalar_t__ max_replication_slots ;
 int wal_keep_segments ;
 int wal_segment_size ;

__attribute__((used)) static void
KeepLogSeg(XLogRecPtr recptr, XLogSegNo *logSegNo)
{
 XLogSegNo segno;
 XLogRecPtr keep;

 XLByteToSeg(recptr, segno, wal_segment_size);
 keep = XLogGetReplicationSlotMinimumLSN();


 if (wal_keep_segments > 0)
 {

  if (segno <= wal_keep_segments)
   segno = 1;
  else
   segno = segno - wal_keep_segments;
 }


 if (max_replication_slots > 0 && keep != InvalidXLogRecPtr)
 {
  XLogSegNo slotSegNo;

  XLByteToSeg(keep, slotSegNo, wal_segment_size);

  if (slotSegNo <= 0)
   segno = 1;
  else if (slotSegNo < segno)
   segno = slotSegNo;
 }


 if (segno < *logSegNo)
  *logSegNo = segno;
}
