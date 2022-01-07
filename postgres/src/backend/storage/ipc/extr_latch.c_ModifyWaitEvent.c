
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_10__ {int nevents; int * latch; TYPE_2__* events; } ;
typedef TYPE_1__ WaitEventSet ;
struct TYPE_11__ {int events; } ;
typedef TYPE_2__ WaitEvent ;
typedef int Latch ;


 int Assert (int) ;
 int EPOLL_CTL_MOD ;
 int ERROR ;
 int WL_LATCH_SET ;
 int WL_POSTMASTER_DEATH ;
 int WaitEventAdjustEpoll (TYPE_1__*,TYPE_2__*,int ) ;
 int WaitEventAdjustPoll (TYPE_1__*,TYPE_2__*) ;
 int WaitEventAdjustWin32 (TYPE_1__*,TYPE_2__*) ;
 int elog (int ,char*) ;

void
ModifyWaitEvent(WaitEventSet *set, int pos, uint32 events, Latch *latch)
{
 WaitEvent *event;

 Assert(pos < set->nevents);

 event = &set->events[pos];







 if (events == event->events &&
  (!(event->events & WL_LATCH_SET) || set->latch == latch))
  return;

 if (event->events & WL_LATCH_SET &&
  events != event->events)
 {

  elog(ERROR, "cannot modify latch event");
 }

 if (event->events & WL_POSTMASTER_DEATH)
 {
  elog(ERROR, "cannot modify postmaster death event");
 }


 event->events = events;

 if (events == WL_LATCH_SET)
 {
  set->latch = latch;
 }
}
