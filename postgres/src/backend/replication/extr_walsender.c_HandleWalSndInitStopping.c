
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int ) ;
 int MyProcPid ;
 int SIGTERM ;
 int am_walsender ;
 int got_STOPPING ;
 int kill (int ,int ) ;
 int replication_active ;

void
HandleWalSndInitStopping(void)
{
 Assert(am_walsender);







 if (!replication_active)
  kill(MyProcPid, SIGTERM);
 else
  got_STOPPING = 1;
}
