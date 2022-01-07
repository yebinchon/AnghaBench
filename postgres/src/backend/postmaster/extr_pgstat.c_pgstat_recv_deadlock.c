
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int m_databaseid; } ;
struct TYPE_5__ {int n_deadlocks; } ;
typedef TYPE_1__ PgStat_StatDBEntry ;
typedef TYPE_2__ PgStat_MsgDeadlock ;


 TYPE_1__* pgstat_get_db_entry (int ,int) ;

__attribute__((used)) static void
pgstat_recv_deadlock(PgStat_MsgDeadlock *msg, int len)
{
 PgStat_StatDBEntry *dbentry;

 dbentry = pgstat_get_db_entry(msg->m_databaseid, 1);

 dbentry->n_deadlocks++;
}
