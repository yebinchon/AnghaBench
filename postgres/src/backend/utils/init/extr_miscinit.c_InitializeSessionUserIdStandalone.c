
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AssertState (int) ;
 int AuthenticatedUserId ;
 int AuthenticatedUserIsSuperuser ;
 int BOOTSTRAP_SUPERUSERID ;
 scalar_t__ IsAutoVacuumWorkerProcess () ;
 scalar_t__ IsBackgroundWorker ;
 int IsUnderPostmaster ;
 int OidIsValid (int ) ;
 int SetSessionUserId (int ,int) ;

void
InitializeSessionUserIdStandalone(void)
{




 AssertState(!IsUnderPostmaster || IsAutoVacuumWorkerProcess() || IsBackgroundWorker);


 AssertState(!OidIsValid(AuthenticatedUserId));

 AuthenticatedUserId = BOOTSTRAP_SUPERUSERID;
 AuthenticatedUserIsSuperuser = 1;

 SetSessionUserId(BOOTSTRAP_SUPERUSERID, 1);
}
