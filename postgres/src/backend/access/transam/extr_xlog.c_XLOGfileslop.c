
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XLogSegNo ;
typedef double XLogRecPtr ;


 double CheckPointCompletionTarget ;
 double CheckPointDistanceEstimate ;
 scalar_t__ ConvertToXSegs (int ,double) ;
 scalar_t__ ceil (double) ;
 int max_wal_size_mb ;
 int min_wal_size_mb ;
 double wal_segment_size ;

__attribute__((used)) static XLogSegNo
XLOGfileslop(XLogRecPtr RedoRecPtr)
{
 XLogSegNo minSegNo;
 XLogSegNo maxSegNo;
 double distance;
 XLogSegNo recycleSegNo;






 minSegNo = RedoRecPtr / wal_segment_size +
  ConvertToXSegs(min_wal_size_mb, wal_segment_size) - 1;
 maxSegNo = RedoRecPtr / wal_segment_size +
  ConvertToXSegs(max_wal_size_mb, wal_segment_size) - 1;
 distance = (1.0 + CheckPointCompletionTarget) * CheckPointDistanceEstimate;

 distance *= 1.10;

 recycleSegNo = (XLogSegNo) ceil(((double) RedoRecPtr + distance) /
         wal_segment_size);

 if (recycleSegNo < minSegNo)
  recycleSegNo = minSegNo;
 if (recycleSegNo > maxSegNo)
  recycleSegNo = maxSegNo;

 return recycleSegNo;
}
