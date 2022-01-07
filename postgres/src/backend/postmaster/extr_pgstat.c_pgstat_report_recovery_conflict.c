
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int msg ;
struct TYPE_3__ {int m_reason; int m_databaseid; int m_hdr; } ;
typedef TYPE_1__ PgStat_MsgRecoveryConflict ;


 int MyDatabaseId ;
 scalar_t__ PGINVALID_SOCKET ;
 int PGSTAT_MTYPE_RECOVERYCONFLICT ;
 scalar_t__ pgStatSock ;
 int pgstat_send (TYPE_1__*,int) ;
 int pgstat_setheader (int *,int ) ;
 int pgstat_track_counts ;

void
pgstat_report_recovery_conflict(int reason)
{
 PgStat_MsgRecoveryConflict msg;

 if (pgStatSock == PGINVALID_SOCKET || !pgstat_track_counts)
  return;

 pgstat_setheader(&msg.m_hdr, PGSTAT_MTYPE_RECOVERYCONFLICT);
 msg.m_databaseid = MyDatabaseId;
 msg.m_reason = reason;
 pgstat_send(&msg, sizeof(msg));
}
