
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TimeLineID ;
typedef scalar_t__ RecoveryTargetTimeLineGoal ;


 scalar_t__ RECOVERY_TARGET_TIMELINE_NUMERIC ;
 scalar_t__ recoveryTargetTLIRequested ;
 scalar_t__ recoveryTargetTimeLineGoal ;
 scalar_t__ strtoul (char const*,int *,int ) ;

__attribute__((used)) static void
assign_recovery_target_timeline(const char *newval, void *extra)
{
 recoveryTargetTimeLineGoal = *((RecoveryTargetTimeLineGoal *) extra);
 if (recoveryTargetTimeLineGoal == RECOVERY_TARGET_TIMELINE_NUMERIC)
  recoveryTargetTLIRequested = (TimeLineID) strtoul(newval, ((void*)0), 0);
 else
  recoveryTargetTLIRequested = 0;
}
