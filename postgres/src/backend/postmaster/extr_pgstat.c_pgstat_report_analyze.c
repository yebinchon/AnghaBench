
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int msg ;
struct TYPE_15__ {int m_resetcounter; void* m_dead_tuples; void* m_live_tuples; int m_analyzetime; int m_autovacuum; int m_tableoid; int m_databaseid; int m_hdr; } ;
struct TYPE_14__ {scalar_t__ tuples_deleted; scalar_t__ tuples_updated; scalar_t__ tuples_inserted; struct TYPE_14__* upper; } ;
struct TYPE_13__ {TYPE_3__* rd_rel; TYPE_2__* pgstat_info; } ;
struct TYPE_12__ {scalar_t__ relisshared; } ;
struct TYPE_10__ {scalar_t__ t_delta_dead_tuples; } ;
struct TYPE_11__ {TYPE_1__ t_counts; TYPE_5__* trans; } ;
typedef TYPE_4__* Relation ;
typedef TYPE_5__ PgStat_TableXactStatus ;
typedef TYPE_6__ PgStat_MsgAnalyze ;
typedef void* PgStat_Counter ;


 int GetCurrentTimestamp () ;
 int InvalidOid ;
 int IsAutoVacuumWorkerProcess () ;
 void* Max (void*,int ) ;
 int MyDatabaseId ;
 scalar_t__ PGINVALID_SOCKET ;
 int PGSTAT_MTYPE_ANALYZE ;
 int RelationGetRelid (TYPE_4__*) ;
 scalar_t__ pgStatSock ;
 int pgstat_send (TYPE_6__*,int) ;
 int pgstat_setheader (int *,int ) ;
 int pgstat_track_counts ;

void
pgstat_report_analyze(Relation rel,
       PgStat_Counter livetuples, PgStat_Counter deadtuples,
       bool resetcounter)
{
 PgStat_MsgAnalyze msg;

 if (pgStatSock == PGINVALID_SOCKET || !pgstat_track_counts)
  return;
 if (rel->pgstat_info != ((void*)0))
 {
  PgStat_TableXactStatus *trans;

  for (trans = rel->pgstat_info->trans; trans; trans = trans->upper)
  {
   livetuples -= trans->tuples_inserted - trans->tuples_deleted;
   deadtuples -= trans->tuples_updated + trans->tuples_deleted;
  }

  deadtuples -= rel->pgstat_info->t_counts.t_delta_dead_tuples;

  livetuples = Max(livetuples, 0);
  deadtuples = Max(deadtuples, 0);
 }

 pgstat_setheader(&msg.m_hdr, PGSTAT_MTYPE_ANALYZE);
 msg.m_databaseid = rel->rd_rel->relisshared ? InvalidOid : MyDatabaseId;
 msg.m_tableoid = RelationGetRelid(rel);
 msg.m_autovacuum = IsAutoVacuumWorkerProcess();
 msg.m_resetcounter = resetcounter;
 msg.m_analyzetime = GetCurrentTimestamp();
 msg.m_live_tuples = livetuples;
 msg.m_dead_tuples = deadtuples;
 pgstat_send(&msg, sizeof(msg));
}
