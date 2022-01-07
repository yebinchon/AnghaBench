
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int m_start_time; int m_databaseid; } ;
struct TYPE_5__ {int last_autovac_time; } ;
typedef TYPE_1__ PgStat_StatDBEntry ;
typedef TYPE_2__ PgStat_MsgAutovacStart ;


 TYPE_1__* pgstat_get_db_entry (int ,int) ;

__attribute__((used)) static void
pgstat_recv_autovac(PgStat_MsgAutovacStart *msg, int len)
{
 PgStat_StatDBEntry *dbentry;




 dbentry = pgstat_get_db_entry(msg->m_databaseid, 1);

 dbentry->last_autovac_time = msg->m_start_time;
}
