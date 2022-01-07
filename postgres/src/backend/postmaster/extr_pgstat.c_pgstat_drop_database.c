
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int msg ;
struct TYPE_3__ {int m_databaseid; int m_hdr; } ;
typedef TYPE_1__ PgStat_MsgDropdb ;
typedef int Oid ;


 scalar_t__ PGINVALID_SOCKET ;
 int PGSTAT_MTYPE_DROPDB ;
 scalar_t__ pgStatSock ;
 int pgstat_send (TYPE_1__*,int) ;
 int pgstat_setheader (int *,int ) ;

void
pgstat_drop_database(Oid databaseid)
{
 PgStat_MsgDropdb msg;

 if (pgStatSock == PGINVALID_SOCKET)
  return;

 pgstat_setheader(&msg.m_hdr, PGSTAT_MTYPE_DROPDB);
 msg.m_databaseid = databaseid;
 pgstat_send(&msg, sizeof(msg));
}
