
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int nest_level; TYPE_2__* first; int * prev; } ;
struct TYPE_7__ {scalar_t__ t_delta_dead_tuples; int t_changed_tuples; scalar_t__ t_delta_live_tuples; scalar_t__ t_truncated; int t_tuples_deleted; int t_tuples_updated; int t_tuples_inserted; } ;
struct TYPE_9__ {TYPE_2__* trans; TYPE_1__ t_counts; } ;
struct TYPE_8__ {int nest_level; scalar_t__ tuples_updated; scalar_t__ tuples_inserted; scalar_t__ tuples_deleted; scalar_t__ truncated; TYPE_3__* parent; int * upper; struct TYPE_8__* next; } ;
typedef TYPE_2__ PgStat_TableXactStatus ;
typedef TYPE_3__ PgStat_TableStatus ;
typedef TYPE_4__ PgStat_SubXactStatus ;


 int Assert (int) ;
 int pgStatXactCommit ;
 int pgStatXactRollback ;
 TYPE_4__* pgStatXactStack ;
 int pgstat_clear_snapshot () ;
 int pgstat_truncate_restore_counters (TYPE_2__*) ;

void
AtEOXact_PgStat(bool isCommit, bool parallel)
{
 PgStat_SubXactStatus *xact_state;


 if (!parallel)
 {




  if (isCommit)
   pgStatXactCommit++;
  else
   pgStatXactRollback++;
 }






 xact_state = pgStatXactStack;
 if (xact_state != ((void*)0))
 {
  PgStat_TableXactStatus *trans;

  Assert(xact_state->nest_level == 1);
  Assert(xact_state->prev == ((void*)0));
  for (trans = xact_state->first; trans != ((void*)0); trans = trans->next)
  {
   PgStat_TableStatus *tabstat;

   Assert(trans->nest_level == 1);
   Assert(trans->upper == ((void*)0));
   tabstat = trans->parent;
   Assert(tabstat->trans == trans);

   if (!isCommit)
    pgstat_truncate_restore_counters(trans);

   tabstat->t_counts.t_tuples_inserted += trans->tuples_inserted;
   tabstat->t_counts.t_tuples_updated += trans->tuples_updated;
   tabstat->t_counts.t_tuples_deleted += trans->tuples_deleted;
   if (isCommit)
   {
    tabstat->t_counts.t_truncated = trans->truncated;
    if (trans->truncated)
    {

     tabstat->t_counts.t_delta_live_tuples = 0;
     tabstat->t_counts.t_delta_dead_tuples = 0;
    }

    tabstat->t_counts.t_delta_live_tuples +=
     trans->tuples_inserted - trans->tuples_deleted;

    tabstat->t_counts.t_delta_dead_tuples +=
     trans->tuples_updated + trans->tuples_deleted;

    tabstat->t_counts.t_changed_tuples +=
     trans->tuples_inserted + trans->tuples_updated +
     trans->tuples_deleted;
   }
   else
   {

    tabstat->t_counts.t_delta_dead_tuples +=
     trans->tuples_inserted + trans->tuples_updated;

   }
   tabstat->trans = ((void*)0);
  }
 }
 pgStatXactStack = ((void*)0);


 pgstat_clear_snapshot();
}
