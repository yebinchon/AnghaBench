
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int TimestampTz ;
struct TYPE_8__ {scalar_t__ tsa_used; TYPE_2__* tsa_entries; struct TYPE_8__* tsa_next; } ;
typedef TYPE_1__ TabStatusArray ;
struct TYPE_11__ {size_t m_nentries; TYPE_3__* m_entry; int m_databaseid; } ;
struct TYPE_10__ {int t_counts; int t_id; } ;
struct TYPE_9__ {int t_counts; int t_id; scalar_t__ t_shared; int * trans; } ;
typedef TYPE_2__ PgStat_TableStatus ;
typedef TYPE_3__ PgStat_TableEntry ;
typedef int PgStat_TableCounts ;
typedef TYPE_4__ PgStat_MsgTabstat ;


 int Assert (int ) ;
 int GetCurrentTransactionStopTimestamp () ;
 int InvalidOid ;
 int MemSet (TYPE_2__*,int ,int) ;
 int MyDatabaseId ;
 size_t PGSTAT_NUM_TABENTRIES ;
 int PGSTAT_STAT_INTERVAL ;
 int TimestampDifferenceExceeds (int ,int ,int ) ;
 int hash_destroy (int *) ;
 int have_function_stats ;
 scalar_t__ memcmp (int *,int const*,int) ;
 int memcpy (int *,int *,int) ;
 int * pgStatTabHash ;
 TYPE_1__* pgStatTabList ;
 scalar_t__ pgStatXactCommit ;
 scalar_t__ pgStatXactRollback ;
 int pgstat_send_funcstats () ;
 int pgstat_send_tabstat (TYPE_4__*) ;

void
pgstat_report_stat(bool force)
{

 static const PgStat_TableCounts all_zeroes;
 static TimestampTz last_report = 0;

 TimestampTz now;
 PgStat_MsgTabstat regular_msg;
 PgStat_MsgTabstat shared_msg;
 TabStatusArray *tsa;
 int i;


 if ((pgStatTabList == ((void*)0) || pgStatTabList->tsa_used == 0) &&
  pgStatXactCommit == 0 && pgStatXactRollback == 0 &&
  !have_function_stats)
  return;





 now = GetCurrentTransactionStopTimestamp();
 if (!force &&
  !TimestampDifferenceExceeds(last_report, now, PGSTAT_STAT_INTERVAL))
  return;
 last_report = now;
 if (pgStatTabHash)
  hash_destroy(pgStatTabHash);
 pgStatTabHash = ((void*)0);







 regular_msg.m_databaseid = MyDatabaseId;
 shared_msg.m_databaseid = InvalidOid;
 regular_msg.m_nentries = 0;
 shared_msg.m_nentries = 0;

 for (tsa = pgStatTabList; tsa != ((void*)0); tsa = tsa->tsa_next)
 {
  for (i = 0; i < tsa->tsa_used; i++)
  {
   PgStat_TableStatus *entry = &tsa->tsa_entries[i];
   PgStat_MsgTabstat *this_msg;
   PgStat_TableEntry *this_ent;


   Assert(entry->trans == ((void*)0));





   if (memcmp(&entry->t_counts, &all_zeroes,
        sizeof(PgStat_TableCounts)) == 0)
    continue;




   this_msg = entry->t_shared ? &shared_msg : &regular_msg;
   this_ent = &this_msg->m_entry[this_msg->m_nentries];
   this_ent->t_id = entry->t_id;
   memcpy(&this_ent->t_counts, &entry->t_counts,
       sizeof(PgStat_TableCounts));
   if (++this_msg->m_nentries >= PGSTAT_NUM_TABENTRIES)
   {
    pgstat_send_tabstat(this_msg);
    this_msg->m_nentries = 0;
   }
  }

  MemSet(tsa->tsa_entries, 0,
      tsa->tsa_used * sizeof(PgStat_TableStatus));
  tsa->tsa_used = 0;
 }





 if (regular_msg.m_nentries > 0 ||
  pgStatXactCommit > 0 || pgStatXactRollback > 0)
  pgstat_send_tabstat(&regular_msg);
 if (shared_msg.m_nentries > 0)
  pgstat_send_tabstat(&shared_msg);


 pgstat_send_funcstats();
}
