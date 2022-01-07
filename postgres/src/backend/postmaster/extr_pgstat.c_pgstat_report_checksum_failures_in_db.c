
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int msg ;
struct TYPE_3__ {int m_failurecount; int m_failure_time; int m_databaseid; int m_hdr; } ;
typedef TYPE_1__ PgStat_MsgChecksumFailure ;
typedef int Oid ;


 int GetCurrentTimestamp () ;
 scalar_t__ PGINVALID_SOCKET ;
 int PGSTAT_MTYPE_CHECKSUMFAILURE ;
 scalar_t__ pgStatSock ;
 int pgstat_send (TYPE_1__*,int) ;
 int pgstat_setheader (int *,int ) ;
 int pgstat_track_counts ;

void
pgstat_report_checksum_failures_in_db(Oid dboid, int failurecount)
{
 PgStat_MsgChecksumFailure msg;

 if (pgStatSock == PGINVALID_SOCKET || !pgstat_track_counts)
  return;

 pgstat_setheader(&msg.m_hdr, PGSTAT_MTYPE_CHECKSUMFAILURE);
 msg.m_databaseid = dboid;
 msg.m_failurecount = failurecount;
 msg.m_failure_time = GetCurrentTimestamp();

 pgstat_send(&msg, sizeof(msg));
}
