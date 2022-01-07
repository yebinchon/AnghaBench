
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int msg ;
struct TYPE_3__ {void* m_dead_tuples; void* m_live_tuples; int m_vacuumtime; int m_autovacuum; int m_tableoid; int m_databaseid; int m_hdr; } ;
typedef TYPE_1__ PgStat_MsgVacuum ;
typedef void* PgStat_Counter ;
typedef int Oid ;


 int GetCurrentTimestamp () ;
 int InvalidOid ;
 int IsAutoVacuumWorkerProcess () ;
 int MyDatabaseId ;
 scalar_t__ PGINVALID_SOCKET ;
 int PGSTAT_MTYPE_VACUUM ;
 scalar_t__ pgStatSock ;
 int pgstat_send (TYPE_1__*,int) ;
 int pgstat_setheader (int *,int ) ;
 int pgstat_track_counts ;

void
pgstat_report_vacuum(Oid tableoid, bool shared,
      PgStat_Counter livetuples, PgStat_Counter deadtuples)
{
 PgStat_MsgVacuum msg;

 if (pgStatSock == PGINVALID_SOCKET || !pgstat_track_counts)
  return;

 pgstat_setheader(&msg.m_hdr, PGSTAT_MTYPE_VACUUM);
 msg.m_databaseid = shared ? InvalidOid : MyDatabaseId;
 msg.m_tableoid = tableoid;
 msg.m_autovacuum = IsAutoVacuumWorkerProcess();
 msg.m_vacuumtime = GetCurrentTimestamp();
 msg.m_live_tuples = livetuples;
 msg.m_dead_tuples = deadtuples;
 pgstat_send(&msg, sizeof(msg));
}
