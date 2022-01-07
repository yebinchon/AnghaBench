
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int msg ;
struct TYPE_3__ {int m_failed; int m_timestamp; int m_xlog; int m_hdr; } ;
typedef TYPE_1__ PgStat_MsgArchiver ;


 int GetCurrentTimestamp () ;
 int PGSTAT_MTYPE_ARCHIVER ;
 int StrNCpy (int ,char const*,int) ;
 int pgstat_send (TYPE_1__*,int) ;
 int pgstat_setheader (int *,int ) ;

void
pgstat_send_archiver(const char *xlog, bool failed)
{
 PgStat_MsgArchiver msg;




 pgstat_setheader(&msg.m_hdr, PGSTAT_MTYPE_ARCHIVER);
 msg.m_failed = failed;
 StrNCpy(msg.m_xlog, xlog, sizeof(msg.m_xlog));
 msg.m_timestamp = GetCurrentTimestamp();
 pgstat_send(&msg, sizeof(msg));
}
