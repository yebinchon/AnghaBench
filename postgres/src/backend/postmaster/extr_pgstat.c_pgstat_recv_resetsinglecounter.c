
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ m_resettype; int m_objectid; int m_databaseid; } ;
struct TYPE_5__ {int functions; int tables; int stat_reset_timestamp; } ;
typedef TYPE_1__ PgStat_StatDBEntry ;
typedef TYPE_2__ PgStat_MsgResetsinglecounter ;


 int GetCurrentTimestamp () ;
 int HASH_REMOVE ;
 scalar_t__ RESET_FUNCTION ;
 scalar_t__ RESET_TABLE ;
 int hash_search (int ,void*,int ,int *) ;
 TYPE_1__* pgstat_get_db_entry (int ,int) ;

__attribute__((used)) static void
pgstat_recv_resetsinglecounter(PgStat_MsgResetsinglecounter *msg, int len)
{
 PgStat_StatDBEntry *dbentry;

 dbentry = pgstat_get_db_entry(msg->m_databaseid, 0);

 if (!dbentry)
  return;


 dbentry->stat_reset_timestamp = GetCurrentTimestamp();


 if (msg->m_resettype == RESET_TABLE)
  (void) hash_search(dbentry->tables, (void *) &(msg->m_objectid),
         HASH_REMOVE, ((void*)0));
 else if (msg->m_resettype == RESET_FUNCTION)
  (void) hash_search(dbentry->functions, (void *) &(msg->m_objectid),
         HASH_REMOVE, ((void*)0));
}
