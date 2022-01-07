
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 scalar_t__ ENOENT ;
 int ERROR ;
 int * FALLBACK_PROMOTE_SIGNAL_FILE ;
 scalar_t__ IsPromoteTriggered () ;
 int LOG ;
 int * PROMOTE_SIGNAL_FILE ;
 int * PromoteTriggerFile ;
 int ResetPromoteTriggered () ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,...) ;
 scalar_t__ errno ;
 int fast_promote ;
 scalar_t__ stat (int *,struct stat*) ;
 scalar_t__ strcmp (int *,char*) ;
 int unlink (int *) ;

__attribute__((used)) static bool
CheckForStandbyTrigger(void)
{
 struct stat stat_buf;
 static bool triggered = 0;

 if (triggered)
  return 1;

 if (IsPromoteTriggered())
 {







  if (stat(PROMOTE_SIGNAL_FILE, &stat_buf) == 0)
  {
   unlink(PROMOTE_SIGNAL_FILE);
   unlink(FALLBACK_PROMOTE_SIGNAL_FILE);
   fast_promote = 1;
  }
  else if (stat(FALLBACK_PROMOTE_SIGNAL_FILE, &stat_buf) == 0)
  {
   unlink(FALLBACK_PROMOTE_SIGNAL_FILE);
   fast_promote = 0;
  }

  ereport(LOG, (errmsg("received promote request")));

  ResetPromoteTriggered();
  triggered = 1;
  return 1;
 }

 if (PromoteTriggerFile == ((void*)0) || strcmp(PromoteTriggerFile, "") == 0)
  return 0;

 if (stat(PromoteTriggerFile, &stat_buf) == 0)
 {
  ereport(LOG,
    (errmsg("promote trigger file found: %s", PromoteTriggerFile)));
  unlink(PromoteTriggerFile);
  triggered = 1;
  fast_promote = 1;
  return 1;
 }
 else if (errno != ENOENT)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not stat promote trigger file \"%s\": %m",
      PromoteTriggerFile)));

 return 0;
}
