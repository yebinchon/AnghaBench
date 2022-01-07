
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int msg ;
struct TYPE_3__ {int m_start_time; int m_databaseid; int m_hdr; } ;
typedef TYPE_1__ PgStat_MsgAutovacStart ;
typedef int Oid ;


 int GetCurrentTimestamp () ;
 scalar_t__ PGINVALID_SOCKET ;
 int PGSTAT_MTYPE_AUTOVAC_START ;
 scalar_t__ pgStatSock ;
 int pgstat_send (TYPE_1__*,int) ;
 int pgstat_setheader (int *,int ) ;

void
pgstat_report_autovac(Oid dboid)
{
 PgStat_MsgAutovacStart msg;

 if (pgStatSock == PGINVALID_SOCKET)
  return;

 pgstat_setheader(&msg.m_hdr, PGSTAT_MTYPE_AUTOVAC_START);
 msg.m_databaseid = dboid;
 msg.m_start_time = GetCurrentTimestamp();

 pgstat_send(&msg, sizeof(msg));
}
