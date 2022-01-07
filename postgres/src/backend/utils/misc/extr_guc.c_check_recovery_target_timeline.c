
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RecoveryTargetTimeLineGoal ;
typedef int GucSource ;


 scalar_t__ EINVAL ;
 scalar_t__ ERANGE ;
 int ERROR ;
 int GUC_check_errdetail (char*) ;
 int RECOVERY_TARGET_TIMELINE_CONTROLFILE ;
 int RECOVERY_TARGET_TIMELINE_LATEST ;
 int RECOVERY_TARGET_TIMELINE_NUMERIC ;
 scalar_t__ errno ;
 scalar_t__ guc_malloc (int ,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int strtoul (char*,int *,int ) ;

__attribute__((used)) static bool
check_recovery_target_timeline(char **newval, void **extra, GucSource source)
{
 RecoveryTargetTimeLineGoal rttg;
 RecoveryTargetTimeLineGoal *myextra;

 if (strcmp(*newval, "current") == 0)
  rttg = RECOVERY_TARGET_TIMELINE_CONTROLFILE;
 else if (strcmp(*newval, "latest") == 0)
  rttg = RECOVERY_TARGET_TIMELINE_LATEST;
 else
 {
  rttg = RECOVERY_TARGET_TIMELINE_NUMERIC;

  errno = 0;
  strtoul(*newval, ((void*)0), 0);
  if (errno == EINVAL || errno == ERANGE)
  {
   GUC_check_errdetail("recovery_target_timeline is not a valid number.");
   return 0;
  }
 }

 myextra = (RecoveryTargetTimeLineGoal *) guc_malloc(ERROR, sizeof(RecoveryTargetTimeLineGoal));
 *myextra = rttg;
 *extra = (void *) myextra;

 return 1;
}
