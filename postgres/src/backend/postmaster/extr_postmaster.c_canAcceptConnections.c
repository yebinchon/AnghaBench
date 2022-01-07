
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CAC_state ;


 int BACKEND_TYPE_ALL ;
 int BACKEND_TYPE_BGWORKER ;
 int CAC_OK ;
 int CAC_RECOVERY ;
 int CAC_SHUTDOWN ;
 int CAC_STARTUP ;
 int CAC_TOOMANY ;
 int CAC_WAITBACKUP ;
 scalar_t__ CountChildren (int ) ;
 int FatalError ;
 scalar_t__ MaxLivePostmasterChildren () ;
 scalar_t__ NoShutdown ;
 scalar_t__ PM_HOT_STANDBY ;
 scalar_t__ PM_RECOVERY ;
 scalar_t__ PM_RUN ;
 scalar_t__ PM_STARTUP ;
 scalar_t__ PM_WAIT_BACKUP ;
 scalar_t__ Shutdown ;
 scalar_t__ pmState ;

__attribute__((used)) static CAC_state
canAcceptConnections(int backend_type)
{
 CAC_state result = CAC_OK;
 if (pmState != PM_RUN &&
  backend_type != BACKEND_TYPE_BGWORKER)
 {
  if (pmState == PM_WAIT_BACKUP)
   result = CAC_WAITBACKUP;
  else if (Shutdown > NoShutdown)
   return CAC_SHUTDOWN;
  else if (!FatalError &&
     (pmState == PM_STARTUP ||
      pmState == PM_RECOVERY))
   return CAC_STARTUP;
  else if (!FatalError &&
     pmState == PM_HOT_STANDBY)
   result = CAC_OK;
  else
   return CAC_RECOVERY;
 }
 if (CountChildren(BACKEND_TYPE_ALL) >= MaxLivePostmasterChildren())
  result = CAC_TOOMANY;

 return result;
}
