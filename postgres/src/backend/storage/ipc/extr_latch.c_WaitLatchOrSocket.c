
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
typedef int pgsocket ;
typedef int WaitEventSet ;
struct TYPE_3__ {int events; } ;
typedef TYPE_1__ WaitEvent ;
typedef int Latch ;


 int AddWaitEventToSet (int *,int,int ,int *,int *) ;
 int Assert (int) ;
 int * CreateWaitEventSet (int ,int) ;
 int CurrentMemoryContext ;
 int FreeWaitEventSet (int *) ;
 scalar_t__ IsUnderPostmaster ;
 int PGINVALID_SOCKET ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int WL_POSTMASTER_DEATH ;
 int WL_SOCKET_MASK ;
 int WL_TIMEOUT ;
 int WaitEventSetWait (int *,long,TYPE_1__*,int,int ) ;

int
WaitLatchOrSocket(Latch *latch, int wakeEvents, pgsocket sock,
      long timeout, uint32 wait_event_info)
{
 int ret = 0;
 int rc;
 WaitEvent event;
 WaitEventSet *set = CreateWaitEventSet(CurrentMemoryContext, 3);

 if (wakeEvents & WL_TIMEOUT)
  Assert(timeout >= 0);
 else
  timeout = -1;

 if (wakeEvents & WL_LATCH_SET)
  AddWaitEventToSet(set, WL_LATCH_SET, PGINVALID_SOCKET,
        latch, ((void*)0));


 Assert(!IsUnderPostmaster ||
     (wakeEvents & WL_EXIT_ON_PM_DEATH) ||
     (wakeEvents & WL_POSTMASTER_DEATH));

 if ((wakeEvents & WL_POSTMASTER_DEATH) && IsUnderPostmaster)
  AddWaitEventToSet(set, WL_POSTMASTER_DEATH, PGINVALID_SOCKET,
        ((void*)0), ((void*)0));

 if ((wakeEvents & WL_EXIT_ON_PM_DEATH) && IsUnderPostmaster)
  AddWaitEventToSet(set, WL_EXIT_ON_PM_DEATH, PGINVALID_SOCKET,
        ((void*)0), ((void*)0));

 if (wakeEvents & WL_SOCKET_MASK)
 {
  int ev;

  ev = wakeEvents & WL_SOCKET_MASK;
  AddWaitEventToSet(set, ev, sock, ((void*)0), ((void*)0));
 }

 rc = WaitEventSetWait(set, timeout, &event, 1, wait_event_info);

 if (rc == 0)
  ret |= WL_TIMEOUT;
 else
 {
  ret |= event.events & (WL_LATCH_SET |
          WL_POSTMASTER_DEATH |
          WL_SOCKET_MASK);
 }

 FreeWaitEventSet(set);

 return ret;
}
