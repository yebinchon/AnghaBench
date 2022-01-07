
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int blk ;
struct TYPE_3__ {int avw_type; int avw_blockNumber; } ;
typedef TYPE_1__ AutoVacuumWorkItem ;



 scalar_t__ BlockNumberIsValid (int) ;
 int MAX_AUTOVAC_ACTIV_LEN ;
 int STATE_RUNNING ;
 int SetCurrentStatementStartTimestamp () ;
 int pgstat_report_activity (int ,char*) ;
 int snprintf (char*,int,char*,...) ;
 int strlen (char*) ;

__attribute__((used)) static void
autovac_report_workitem(AutoVacuumWorkItem *workitem,
      const char *nspname, const char *relname)
{
 char activity[MAX_AUTOVAC_ACTIV_LEN + 12 + 2];
 char blk[12 + 2];
 int len;

 switch (workitem->avw_type)
 {
  case 128:
   snprintf(activity, MAX_AUTOVAC_ACTIV_LEN,
      "autovacuum: BRIN summarize");
   break;
 }




 len = strlen(activity);

 if (BlockNumberIsValid(workitem->avw_blockNumber))
  snprintf(blk, sizeof(blk), " %u", workitem->avw_blockNumber);
 else
  blk[0] = '\0';

 snprintf(activity + len, MAX_AUTOVAC_ACTIV_LEN - len,
    " %s.%s%s", nspname, relname, blk);


 SetCurrentStatementStartTimestamp();

 pgstat_report_activity(STATE_RUNNING, activity);
}
