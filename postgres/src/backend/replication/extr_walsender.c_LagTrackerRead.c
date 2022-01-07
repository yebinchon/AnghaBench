
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
struct TYPE_3__ {scalar_t__ lsn; scalar_t__ time; } ;
typedef TYPE_1__ WalTimeSample ;
typedef scalar_t__ TimestampTz ;
typedef int TimeOffset ;
struct TYPE_4__ {size_t* read_heads; size_t write_head; TYPE_1__* buffer; TYPE_1__* last_read; } ;


 int Assert (int) ;
 int LAG_TRACKER_BUFFER_SIZE ;
 TYPE_2__* lag_tracker ;

__attribute__((used)) static TimeOffset
LagTrackerRead(int head, XLogRecPtr lsn, TimestampTz now)
{
 TimestampTz time = 0;


 while (lag_tracker->read_heads[head] != lag_tracker->write_head &&
     lag_tracker->buffer[lag_tracker->read_heads[head]].lsn <= lsn)
 {
  time = lag_tracker->buffer[lag_tracker->read_heads[head]].time;
  lag_tracker->last_read[head] =
   lag_tracker->buffer[lag_tracker->read_heads[head]];
  lag_tracker->read_heads[head] =
   (lag_tracker->read_heads[head] + 1) % LAG_TRACKER_BUFFER_SIZE;
 }
 if (lag_tracker->read_heads[head] == lag_tracker->write_head)
  lag_tracker->last_read[head].time = 0;

 if (time > now)
 {

  return -1;
 }
 else if (time == 0)
 {
  if (lag_tracker->read_heads[head] == lag_tracker->write_head)
  {

   return -1;
  }
  else if (lag_tracker->last_read[head].time != 0)
  {

   double fraction;
   WalTimeSample prev = lag_tracker->last_read[head];
   WalTimeSample next = lag_tracker->buffer[lag_tracker->read_heads[head]];

   if (lsn < prev.lsn)
   {





    return -1;
   }

   Assert(prev.lsn < next.lsn);

   if (prev.time > next.time)
   {

    return -1;
   }


   fraction =
    (double) (lsn - prev.lsn) / (double) (next.lsn - prev.lsn);


   time = (TimestampTz)
    ((double) prev.time + (next.time - prev.time) * fraction);
  }
  else
  {







   time = lag_tracker->buffer[lag_tracker->read_heads[head]].time;
  }
 }


 Assert(time != 0);
 return now - time;
}
