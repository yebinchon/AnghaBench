
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* member_names; int nmembers; scalar_t__ syncrep_method; } ;


 scalar_t__ SYNC_REP_PRIORITY ;
 TYPE_1__* SyncRepConfig ;
 int SyncStandbysDefined () ;
 scalar_t__ am_cascading_walsender ;
 int application_name ;
 scalar_t__ pg_strcasecmp (char const*,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int
SyncRepGetStandbyPriority(void)
{
 const char *standby_name;
 int priority;
 bool found = 0;





 if (am_cascading_walsender)
  return 0;

 if (!SyncStandbysDefined() || SyncRepConfig == ((void*)0))
  return 0;

 standby_name = SyncRepConfig->member_names;
 for (priority = 1; priority <= SyncRepConfig->nmembers; priority++)
 {
  if (pg_strcasecmp(standby_name, application_name) == 0 ||
   strcmp(standby_name, "*") == 0)
  {
   found = 1;
   break;
  }
  standby_name += strlen(standby_name) + 1;
 }

 if (!found)
  return 0;





 return (SyncRepConfig->syncrep_method == SYNC_REP_PRIORITY) ? priority : 1;
}
