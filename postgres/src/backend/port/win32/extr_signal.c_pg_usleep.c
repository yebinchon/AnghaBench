
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int ) ;
 int EINTR ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int *,int) ;
 int errno ;
 int pgwin32_dispatch_queued_signals () ;
 int * pgwin32_signal_event ;

void
pg_usleep(long microsec)
{
 Assert(pgwin32_signal_event != ((void*)0));
 if (WaitForSingleObject(pgwin32_signal_event,
       (microsec < 500 ? 1 : (microsec + 500) / 1000))
  == WAIT_OBJECT_0)
 {
  pgwin32_dispatch_queued_signals();
  errno = EINTR;
  return;
 }
}
