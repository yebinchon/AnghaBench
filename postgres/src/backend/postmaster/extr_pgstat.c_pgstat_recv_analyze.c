
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int m_analyzetime; scalar_t__ m_autovacuum; scalar_t__ m_resetcounter; int m_dead_tuples; int m_live_tuples; int m_tableoid; int m_databaseid; } ;
struct TYPE_5__ {int analyze_count; int analyze_timestamp; int autovac_analyze_count; int autovac_analyze_timestamp; scalar_t__ changes_since_analyze; int n_dead_tuples; int n_live_tuples; } ;
typedef TYPE_1__ PgStat_StatTabEntry ;
typedef int PgStat_StatDBEntry ;
typedef TYPE_2__ PgStat_MsgAnalyze ;


 int * pgstat_get_db_entry (int ,int) ;
 TYPE_1__* pgstat_get_tab_entry (int *,int ,int) ;

__attribute__((used)) static void
pgstat_recv_analyze(PgStat_MsgAnalyze *msg, int len)
{
 PgStat_StatDBEntry *dbentry;
 PgStat_StatTabEntry *tabentry;




 dbentry = pgstat_get_db_entry(msg->m_databaseid, 1);

 tabentry = pgstat_get_tab_entry(dbentry, msg->m_tableoid, 1);

 tabentry->n_live_tuples = msg->m_live_tuples;
 tabentry->n_dead_tuples = msg->m_dead_tuples;






 if (msg->m_resetcounter)
  tabentry->changes_since_analyze = 0;

 if (msg->m_autovacuum)
 {
  tabentry->autovac_analyze_timestamp = msg->m_analyzetime;
  tabentry->autovac_analyze_count++;
 }
 else
 {
  tabentry->analyze_timestamp = msg->m_analyzetime;
  tabentry->analyze_count++;
 }
}
