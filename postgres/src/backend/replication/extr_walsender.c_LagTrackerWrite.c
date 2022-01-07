
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
typedef int TimestampTz ;
struct TYPE_4__ {scalar_t__ last_lsn; int write_head; int* read_heads; TYPE_1__* buffer; } ;
struct TYPE_3__ {int time; scalar_t__ lsn; } ;


 int LAG_TRACKER_BUFFER_SIZE ;
 int NUM_SYNC_REP_WAIT_MODE ;
 int am_walsender ;
 TYPE_2__* lag_tracker ;

__attribute__((used)) static void
LagTrackerWrite(XLogRecPtr lsn, TimestampTz local_flush_time)
{
 bool buffer_full;
 int new_write_head;
 int i;

 if (!am_walsender)
  return;





 if (lag_tracker->last_lsn == lsn)
  return;
 lag_tracker->last_lsn = lsn;







 new_write_head = (lag_tracker->write_head + 1) % LAG_TRACKER_BUFFER_SIZE;
 buffer_full = 0;
 for (i = 0; i < NUM_SYNC_REP_WAIT_MODE; ++i)
 {
  if (new_write_head == lag_tracker->read_heads[i])
   buffer_full = 1;
 }






 if (buffer_full)
 {
  new_write_head = lag_tracker->write_head;
  if (lag_tracker->write_head > 0)
   lag_tracker->write_head--;
  else
   lag_tracker->write_head = LAG_TRACKER_BUFFER_SIZE - 1;
 }


 lag_tracker->buffer[lag_tracker->write_head].lsn = lsn;
 lag_tracker->buffer[lag_tracker->write_head].time = local_flush_time;
 lag_tracker->write_head = new_write_head;
}
