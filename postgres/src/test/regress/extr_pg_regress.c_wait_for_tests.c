
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int instr_time ;
typedef scalar_t__ PID_TYPE ;
typedef scalar_t__ DWORD ;


 int CloseHandle (scalar_t__) ;
 int FALSE ;
 int GetExitCodeProcess (scalar_t__,scalar_t__*) ;
 char* GetLastError () ;
 int INFINITE ;
 int INSTR_TIME_SET_CURRENT (int ) ;
 scalar_t__ INVALID_PID ;
 int WAIT_OBJECT_0 ;
 int WaitForMultipleObjects (int,scalar_t__*,int ,int ) ;
 char* _ (char*) ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int free (scalar_t__*) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 scalar_t__* pg_malloc (int) ;
 int status (char*,char*) ;
 int stderr ;
 char* strerror (int ) ;
 scalar_t__ wait (int*) ;

__attribute__((used)) static void
wait_for_tests(PID_TYPE * pids, int *statuses, instr_time *stoptimes,
      char **names, int num_tests)
{
 int tests_left;
 int i;







 tests_left = num_tests;
 while (tests_left > 0)
 {
  PID_TYPE p;


  int exit_status;

  p = wait(&exit_status);

  if (p == INVALID_PID)
  {
   fprintf(stderr, _("failed to wait for subprocesses: %s\n"),
     strerror(errno));
   exit(2);
  }
  for (i = 0; i < num_tests; i++)
  {
   if (p == pids[i])
   {




    pids[i] = INVALID_PID;
    statuses[i] = (int) exit_status;
    INSTR_TIME_SET_CURRENT(stoptimes[i]);
    if (names)
     status(" %s", names[i]);
    tests_left--;
    break;
   }
  }
 }




}
