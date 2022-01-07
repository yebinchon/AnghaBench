
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HANDLE ;


 int * CreateEvent (int *,int ,int ,int *) ;
 int * CreateThread (int *,int ,int ,int *,int ,int *) ;
 int FALSE ;
 int FATAL ;
 int GetLastError () ;
 int InitializeCriticalSection (int *) ;
 int PG_SIGNAL_COUNT ;
 int SIG_DFL ;
 int SIG_IGN ;
 int SetConsoleCtrlHandler (int ,int ) ;
 int TRUE ;
 int ereport (int ,int ) ;
 int errmsg_internal (char*,...) ;
 int pg_console_handler ;
 int * pg_signal_array ;
 int pg_signal_crit_sec ;
 int * pg_signal_defaults ;
 scalar_t__ pg_signal_mask ;
 scalar_t__ pg_signal_queue ;
 int pg_signal_thread ;
 int * pgwin32_signal_event ;

void
pgwin32_signal_initialize(void)
{
 int i;
 HANDLE signal_thread_handle;

 InitializeCriticalSection(&pg_signal_crit_sec);

 for (i = 0; i < PG_SIGNAL_COUNT; i++)
 {
  pg_signal_array[i] = SIG_DFL;
  pg_signal_defaults[i] = SIG_IGN;
 }
 pg_signal_mask = 0;
 pg_signal_queue = 0;


 pgwin32_signal_event = CreateEvent(((void*)0), TRUE, FALSE, ((void*)0));
 if (pgwin32_signal_event == ((void*)0))
  ereport(FATAL,
    (errmsg_internal("could not create signal event: error code %lu", GetLastError())));


 signal_thread_handle = CreateThread(((void*)0), 0, pg_signal_thread, ((void*)0), 0, ((void*)0));
 if (signal_thread_handle == ((void*)0))
  ereport(FATAL,
    (errmsg_internal("could not create signal handler thread")));


 if (!SetConsoleCtrlHandler(pg_console_handler, TRUE))
  ereport(FATAL,
    (errmsg_internal("could not set console control handler")));
}
