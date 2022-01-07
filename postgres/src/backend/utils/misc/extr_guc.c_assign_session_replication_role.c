
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ResetPlanCache () ;
 int SessionReplicationRole ;

__attribute__((used)) static void
assign_session_replication_role(int newval, void *extra)
{




 if (SessionReplicationRole != newval)
  ResetPlanCache();
}
