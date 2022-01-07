
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int m_failure_time; scalar_t__ m_failurecount; int m_databaseid; } ;
struct TYPE_5__ {int last_checksum_failure; int n_checksum_failures; } ;
typedef TYPE_1__ PgStat_StatDBEntry ;
typedef TYPE_2__ PgStat_MsgChecksumFailure ;


 TYPE_1__* pgstat_get_db_entry (int ,int) ;

__attribute__((used)) static void
pgstat_recv_checksum_failure(PgStat_MsgChecksumFailure *msg, int len)
{
 PgStat_StatDBEntry *dbentry;

 dbentry = pgstat_get_db_entry(msg->m_databaseid, 1);

 dbentry->n_checksum_failures += msg->m_failurecount;
 dbentry->last_checksum_failure = msg->m_failure_time;
}
