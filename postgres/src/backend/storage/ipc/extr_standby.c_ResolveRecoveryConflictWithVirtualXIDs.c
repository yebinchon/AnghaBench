
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef int VirtualTransactionId ;
typedef int TimestampTz ;
typedef int ProcSignalReason ;


 int Assert (scalar_t__) ;
 scalar_t__ CancelVirtualTransaction (int ,int ) ;
 int GetCurrentTimestamp () ;
 int STANDBY_INITIAL_WAIT_US ;
 scalar_t__ TimestampDifferenceExceeds (int ,int ,int) ;
 scalar_t__ VirtualTransactionIdIsValid (int ) ;
 int VirtualXactLock (int ,int) ;
 scalar_t__ WaitExceedsMaxStandbyDelay () ;
 char* get_ps_display (int*) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ palloc (int) ;
 int pfree (char*) ;
 int pg_usleep (long) ;
 int set_ps_display (char*,int) ;
 int standbyWait_us ;
 int strcpy (char*,char*) ;
 scalar_t__ update_process_title ;

__attribute__((used)) static void
ResolveRecoveryConflictWithVirtualXIDs(VirtualTransactionId *waitlist,
            ProcSignalReason reason)
{
 TimestampTz waitStart;
 char *new_status;


 if (!VirtualTransactionIdIsValid(*waitlist))
  return;

 waitStart = GetCurrentTimestamp();
 new_status = ((void*)0);

 while (VirtualTransactionIdIsValid(*waitlist))
 {

  standbyWait_us = STANDBY_INITIAL_WAIT_US;


  while (!VirtualXactLock(*waitlist, 0))
  {




   if (update_process_title && new_status == ((void*)0) &&
    TimestampDifferenceExceeds(waitStart, GetCurrentTimestamp(),
             500))
   {
    const char *old_status;
    int len;

    old_status = get_ps_display(&len);
    new_status = (char *) palloc(len + 8 + 1);
    memcpy(new_status, old_status, len);
    strcpy(new_status + len, " waiting");
    set_ps_display(new_status, 0);
    new_status[len] = '\0';
   }


   if (WaitExceedsMaxStandbyDelay())
   {
    pid_t pid;




    Assert(VirtualTransactionIdIsValid(*waitlist));
    pid = CancelVirtualTransaction(*waitlist, reason);





    if (pid != 0)
     pg_usleep(5000L);
   }
  }


  waitlist++;
 }


 if (new_status)
 {
  set_ps_display(new_status, 0);
  pfree(new_status);
 }
}
