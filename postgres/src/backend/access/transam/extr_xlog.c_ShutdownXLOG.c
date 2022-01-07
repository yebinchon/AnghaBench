
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int Assert (int) ;
 int * AuxProcessResourceOwner ;
 int CHECKPOINT_IMMEDIATE ;
 int CHECKPOINT_IS_SHUTDOWN ;
 int CreateCheckPoint (int) ;
 int CreateRestartPoint (int) ;
 int * CurrentResourceOwner ;
 scalar_t__ IsPostmasterEnvironment ;
 int LOG ;
 int NOTICE ;
 scalar_t__ RecoveryInProgress () ;
 int RequestXLogSwitch (int) ;
 int ShutdownCLOG () ;
 int ShutdownCommitTs () ;
 int ShutdownMultiXact () ;
 int ShutdownSUBTRANS () ;
 int WalSndInitStopping () ;
 int WalSndWaitStopping () ;
 scalar_t__ XLogArchiveCommandSet () ;
 scalar_t__ XLogArchivingActive () ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;

void
ShutdownXLOG(int code, Datum arg)
{




 Assert(AuxProcessResourceOwner != ((void*)0));
 Assert(CurrentResourceOwner == ((void*)0) ||
     CurrentResourceOwner == AuxProcessResourceOwner);
 CurrentResourceOwner = AuxProcessResourceOwner;


 ereport(IsPostmasterEnvironment ? LOG : NOTICE,
   (errmsg("shutting down")));




 WalSndInitStopping();





 WalSndWaitStopping();

 if (RecoveryInProgress())
  CreateRestartPoint(CHECKPOINT_IS_SHUTDOWN | CHECKPOINT_IMMEDIATE);
 else
 {






  if (XLogArchivingActive() && XLogArchiveCommandSet())
   RequestXLogSwitch(0);

  CreateCheckPoint(CHECKPOINT_IS_SHUTDOWN | CHECKPOINT_IMMEDIATE);
 }
 ShutdownCLOG();
 ShutdownCommitTs();
 ShutdownSUBTRANS();
 ShutdownMultiXact();
}
