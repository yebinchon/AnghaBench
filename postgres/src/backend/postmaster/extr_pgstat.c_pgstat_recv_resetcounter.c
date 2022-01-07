
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int m_databaseid; } ;
struct TYPE_6__ {int * functions; int * tables; } ;
typedef TYPE_1__ PgStat_StatDBEntry ;
typedef TYPE_2__ PgStat_MsgResetcounter ;


 int hash_destroy (int *) ;
 TYPE_1__* pgstat_get_db_entry (int ,int) ;
 int reset_dbentry_counters (TYPE_1__*) ;

__attribute__((used)) static void
pgstat_recv_resetcounter(PgStat_MsgResetcounter *msg, int len)
{
 PgStat_StatDBEntry *dbentry;




 dbentry = pgstat_get_db_entry(msg->m_databaseid, 0);

 if (!dbentry)
  return;





 if (dbentry->tables != ((void*)0))
  hash_destroy(dbentry->tables);
 if (dbentry->functions != ((void*)0))
  hash_destroy(dbentry->functions);

 dbentry->tables = ((void*)0);
 dbentry->functions = ((void*)0);





 reset_dbentry_counters(dbentry);
}
