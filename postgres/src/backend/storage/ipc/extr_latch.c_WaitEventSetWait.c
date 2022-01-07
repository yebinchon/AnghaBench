
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32 ;
typedef int instr_time ;
struct TYPE_11__ {size_t latch_pos; TYPE_2__* events; TYPE_1__* latch; } ;
typedef TYPE_3__ WaitEventSet ;
struct TYPE_12__ {size_t pos; int events; int user_data; int fd; } ;
typedef TYPE_4__ WaitEvent ;
struct TYPE_10__ {int user_data; } ;
struct TYPE_9__ {scalar_t__ is_set; } ;


 int Assert (int) ;
 scalar_t__ INSTR_TIME_GET_MILLISEC (int ) ;
 int INSTR_TIME_SET_CURRENT (int ) ;
 int INSTR_TIME_SUBTRACT (int ,int ) ;
 long INT_MAX ;
 int PGINVALID_SOCKET ;
 int WL_LATCH_SET ;
 int WaitEventSetWaitBlock (TYPE_3__*,long,TYPE_4__*,int) ;
 int pgstat_report_wait_end () ;
 int pgstat_report_wait_start (int ) ;
 int pgwin32_dispatch_queued_signals () ;
 int waiting ;

int
WaitEventSetWait(WaitEventSet *set, long timeout,
     WaitEvent *occurred_events, int nevents,
     uint32 wait_event_info)
{
 int returned_events = 0;
 instr_time start_time;
 instr_time cur_time;
 long cur_timeout = -1;

 Assert(nevents > 0);





 if (timeout >= 0)
 {
  INSTR_TIME_SET_CURRENT(start_time);
  Assert(timeout >= 0 && timeout <= INT_MAX);
  cur_timeout = timeout;
 }

 pgstat_report_wait_start(wait_event_info);


 waiting = 1;




 while (returned_events == 0)
 {
  int rc;
  if (set->latch && set->latch->is_set)
  {
   occurred_events->fd = PGINVALID_SOCKET;
   occurred_events->pos = set->latch_pos;
   occurred_events->user_data =
    set->events[set->latch_pos].user_data;
   occurred_events->events = WL_LATCH_SET;
   occurred_events++;
   returned_events++;

   break;
  }






  rc = WaitEventSetWaitBlock(set, cur_timeout,
           occurred_events, nevents);

  if (rc == -1)
   break;
  else
   returned_events = rc;


  if (returned_events == 0 && timeout >= 0)
  {
   INSTR_TIME_SET_CURRENT(cur_time);
   INSTR_TIME_SUBTRACT(cur_time, start_time);
   cur_timeout = timeout - (long) INSTR_TIME_GET_MILLISEC(cur_time);
   if (cur_timeout <= 0)
    break;
  }
 }

 waiting = 0;


 pgstat_report_wait_end();

 return returned_events;
}
