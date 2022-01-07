
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int m_databaseid; } ;
struct TYPE_5__ {int * functions; int * tables; } ;
typedef TYPE_1__ PgStat_StatDBEntry ;
typedef TYPE_2__ PgStat_MsgDropdb ;
typedef int Oid ;


 int DEBUG2 ;
 int ERROR ;
 int HASH_REMOVE ;
 int MAXPGPATH ;
 int elog (int ,char*,char*) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 int get_dbstat_filename (int,int,int ,char*,int) ;
 int hash_destroy (int *) ;
 int * hash_search (int ,void*,int ,int *) ;
 int pgStatDBHash ;
 TYPE_1__* pgstat_get_db_entry (int ,int) ;
 int unlink (char*) ;

__attribute__((used)) static void
pgstat_recv_dropdb(PgStat_MsgDropdb *msg, int len)
{
 Oid dbid = msg->m_databaseid;
 PgStat_StatDBEntry *dbentry;




 dbentry = pgstat_get_db_entry(dbid, 0);




 if (dbentry)
 {
  char statfile[MAXPGPATH];

  get_dbstat_filename(0, 0, dbid, statfile, MAXPGPATH);

  elog(DEBUG2, "removing stats file \"%s\"", statfile);
  unlink(statfile);

  if (dbentry->tables != ((void*)0))
   hash_destroy(dbentry->tables);
  if (dbentry->functions != ((void*)0))
   hash_destroy(dbentry->functions);

  if (hash_search(pgStatDBHash,
      (void *) &dbid,
      HASH_REMOVE, ((void*)0)) == ((void*)0))
   ereport(ERROR,
     (errmsg("database hash table corrupted during cleanup --- abort")));
 }
}
