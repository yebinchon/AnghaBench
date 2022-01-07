
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HandleStartupProcInterrupts () ;
 int LOG ;
 int LocalHotStandbyActive ;
 scalar_t__ RecoveryIsPaused () ;
 int ereport (int ,int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int pg_usleep (long) ;

__attribute__((used)) static void
recoveryPausesHere(void)
{

 if (!LocalHotStandbyActive)
  return;

 ereport(LOG,
   (errmsg("recovery has paused"),
    errhint("Execute pg_wal_replay_resume() to continue.")));

 while (RecoveryIsPaused())
 {
  pg_usleep(1000000L);
  HandleStartupProcInterrupts();
 }
}
