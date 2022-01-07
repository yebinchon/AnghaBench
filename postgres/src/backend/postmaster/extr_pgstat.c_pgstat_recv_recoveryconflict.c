
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int m_reason; int m_databaseid; } ;
struct TYPE_5__ {int n_conflict_startup_deadlock; int n_conflict_bufferpin; int n_conflict_snapshot; int n_conflict_lock; int n_conflict_tablespace; } ;
typedef TYPE_1__ PgStat_StatDBEntry ;
typedef TYPE_2__ PgStat_MsgRecoveryConflict ;
 TYPE_1__* pgstat_get_db_entry (int ,int) ;

__attribute__((used)) static void
pgstat_recv_recoveryconflict(PgStat_MsgRecoveryConflict *msg, int len)
{
 PgStat_StatDBEntry *dbentry;

 dbentry = pgstat_get_db_entry(msg->m_databaseid, 1);

 switch (msg->m_reason)
 {
  case 132:





   break;
  case 128:
   dbentry->n_conflict_tablespace++;
   break;
  case 131:
   dbentry->n_conflict_lock++;
   break;
  case 130:
   dbentry->n_conflict_snapshot++;
   break;
  case 133:
   dbentry->n_conflict_bufferpin++;
   break;
  case 129:
   dbentry->n_conflict_startup_deadlock++;
   break;
 }
}
