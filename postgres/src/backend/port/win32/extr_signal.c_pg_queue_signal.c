
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int ) ;
 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int PG_SIGNAL_COUNT ;
 int SetEvent (int *) ;
 int pg_signal_crit_sec ;
 int pg_signal_queue ;
 int * pgwin32_signal_event ;
 int sigmask (int) ;

void
pg_queue_signal(int signum)
{
 Assert(pgwin32_signal_event != ((void*)0));
 if (signum >= PG_SIGNAL_COUNT || signum <= 0)
  return;

 EnterCriticalSection(&pg_signal_crit_sec);
 pg_signal_queue |= sigmask(signum);
 LeaveCriticalSection(&pg_signal_crit_sec);

 SetEvent(pgwin32_signal_event);
}
