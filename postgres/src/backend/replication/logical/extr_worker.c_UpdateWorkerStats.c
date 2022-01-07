
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* XLogRecPtr ;
typedef void* TimestampTz ;
struct TYPE_2__ {void* reply_time; void* reply_lsn; int last_recv_time; void* last_send_time; void* last_lsn; } ;


 int GetCurrentTimestamp () ;
 TYPE_1__* MyLogicalRepWorker ;

__attribute__((used)) static void
UpdateWorkerStats(XLogRecPtr last_lsn, TimestampTz send_time, bool reply)
{
 MyLogicalRepWorker->last_lsn = last_lsn;
 MyLogicalRepWorker->last_send_time = send_time;
 MyLogicalRepWorker->last_recv_time = GetCurrentTimestamp();
 if (reply)
 {
  MyLogicalRepWorker->reply_lsn = last_lsn;
  MyLogicalRepWorker->reply_time = send_time;
 }
}
