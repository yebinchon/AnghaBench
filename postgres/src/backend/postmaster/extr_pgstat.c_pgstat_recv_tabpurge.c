
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int m_nentries; int * m_tableid; int m_databaseid; } ;
struct TYPE_5__ {int tables; } ;
typedef TYPE_1__ PgStat_StatDBEntry ;
typedef TYPE_2__ PgStat_MsgTabpurge ;


 int HASH_REMOVE ;
 int hash_search (int ,void*,int ,int *) ;
 TYPE_1__* pgstat_get_db_entry (int ,int) ;

__attribute__((used)) static void
pgstat_recv_tabpurge(PgStat_MsgTabpurge *msg, int len)
{
 PgStat_StatDBEntry *dbentry;
 int i;

 dbentry = pgstat_get_db_entry(msg->m_databaseid, 0);




 if (!dbentry || !dbentry->tables)
  return;




 for (i = 0; i < msg->m_nentries; i++)
 {

  (void) hash_search(dbentry->tables,
         (void *) &(msg->m_tableid[i]),
         HASH_REMOVE, ((void*)0));
 }
}
