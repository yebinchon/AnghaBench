
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int msg ;
struct TYPE_3__ {int m_objectid; int m_resettype; int m_databaseid; int m_hdr; } ;
typedef int PgStat_Single_Reset_Type ;
typedef TYPE_1__ PgStat_MsgResetsinglecounter ;
typedef int Oid ;


 int MyDatabaseId ;
 scalar_t__ PGINVALID_SOCKET ;
 int PGSTAT_MTYPE_RESETSINGLECOUNTER ;
 scalar_t__ pgStatSock ;
 int pgstat_send (TYPE_1__*,int) ;
 int pgstat_setheader (int *,int ) ;

void
pgstat_reset_single_counter(Oid objoid, PgStat_Single_Reset_Type type)
{
 PgStat_MsgResetsinglecounter msg;

 if (pgStatSock == PGINVALID_SOCKET)
  return;

 pgstat_setheader(&msg.m_hdr, PGSTAT_MTYPE_RESETSINGLECOUNTER);
 msg.m_databaseid = MyDatabaseId;
 msg.m_resettype = type;
 msg.m_objectid = objoid;

 pgstat_send(&msg, sizeof(msg));
}
