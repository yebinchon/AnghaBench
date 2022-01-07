
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int msg ;
struct TYPE_3__ {int m_hdr; int m_resettarget; } ;
typedef TYPE_1__ PgStat_MsgResetsharedcounter ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 scalar_t__ PGINVALID_SOCKET ;
 int PGSTAT_MTYPE_RESETSHAREDCOUNTER ;
 int RESET_ARCHIVER ;
 int RESET_BGWRITER ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,char const*) ;
 scalar_t__ pgStatSock ;
 int pgstat_send (TYPE_1__*,int) ;
 int pgstat_setheader (int *,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

void
pgstat_reset_shared_counters(const char *target)
{
 PgStat_MsgResetsharedcounter msg;

 if (pgStatSock == PGINVALID_SOCKET)
  return;

 if (strcmp(target, "archiver") == 0)
  msg.m_resettarget = RESET_ARCHIVER;
 else if (strcmp(target, "bgwriter") == 0)
  msg.m_resettarget = RESET_BGWRITER;
 else
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("unrecognized reset target: \"%s\"", target),
     errhint("Target must be \"archiver\" or \"bgwriter\".")));

 pgstat_setheader(&msg.m_hdr, PGSTAT_MTYPE_RESETSHAREDCOUNTER);
 pgstat_send(&msg, sizeof(msg));
}
