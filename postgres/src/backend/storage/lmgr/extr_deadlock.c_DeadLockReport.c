
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_11__ {int locktag_lockmethodid; } ;
struct TYPE_13__ {int pid; int lockmode; TYPE_10__ locktag; } ;
struct TYPE_12__ {int data; int len; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ DEADLOCK_INFO ;


 int DescribeLockTag (TYPE_1__*,TYPE_10__*) ;
 int ERRCODE_T_R_DEADLOCK_DETECTED ;
 int ERROR ;
 int GetLockmodeName (int ,int ) ;
 int _ (char*) ;
 int appendBinaryStringInfo (TYPE_1__*,int ,int ) ;
 int appendStringInfo (TYPE_1__*,int ,int,int ,...) ;
 int appendStringInfoChar (TYPE_1__*,char) ;
 TYPE_2__* deadlockDetails ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail_internal (char*,int ) ;
 int errdetail_log (char*,int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int initStringInfo (TYPE_1__*) ;
 int nDeadlockDetails ;
 int pgstat_get_backend_current_activity (int,int) ;
 int pgstat_report_deadlock () ;
 int resetStringInfo (TYPE_1__*) ;

void
DeadLockReport(void)
{
 StringInfoData clientbuf;
 StringInfoData logbuf;
 StringInfoData locktagbuf;
 int i;

 initStringInfo(&clientbuf);
 initStringInfo(&logbuf);
 initStringInfo(&locktagbuf);


 for (i = 0; i < nDeadlockDetails; i++)
 {
  DEADLOCK_INFO *info = &deadlockDetails[i];
  int nextpid;


  if (i < nDeadlockDetails - 1)
   nextpid = info[1].pid;
  else
   nextpid = deadlockDetails[0].pid;


  resetStringInfo(&locktagbuf);

  DescribeLockTag(&locktagbuf, &info->locktag);

  if (i > 0)
   appendStringInfoChar(&clientbuf, '\n');

  appendStringInfo(&clientbuf,
       _("Process %d waits for %s on %s; blocked by process %d."),
       info->pid,
       GetLockmodeName(info->locktag.locktag_lockmethodid,
           info->lockmode),
       locktagbuf.data,
       nextpid);
 }


 appendBinaryStringInfo(&logbuf, clientbuf.data, clientbuf.len);


 for (i = 0; i < nDeadlockDetails; i++)
 {
  DEADLOCK_INFO *info = &deadlockDetails[i];

  appendStringInfoChar(&logbuf, '\n');

  appendStringInfo(&logbuf,
       _("Process %d: %s"),
       info->pid,
       pgstat_get_backend_current_activity(info->pid, 0));
 }

 pgstat_report_deadlock();

 ereport(ERROR,
   (errcode(ERRCODE_T_R_DEADLOCK_DETECTED),
    errmsg("deadlock detected"),
    errdetail_internal("%s", clientbuf.data),
    errdetail_log("%s", logbuf.data),
    errhint("See server log for query details.")));
}
