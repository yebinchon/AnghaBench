
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int t_delta_dead_tuples; int t_tuples_deleted; int t_tuples_updated; int t_tuples_inserted; } ;
struct TYPE_12__ {TYPE_2__* trans; TYPE_1__ t_counts; } ;
struct TYPE_11__ {int nest_level; struct TYPE_11__* upper; scalar_t__ tuples_updated; scalar_t__ tuples_inserted; scalar_t__ tuples_deleted; struct TYPE_11__* first; struct TYPE_11__* next; scalar_t__ truncated; TYPE_3__* parent; struct TYPE_11__* prev; } ;
typedef TYPE_2__ PgStat_TableXactStatus ;
typedef TYPE_3__ PgStat_TableStatus ;
typedef TYPE_2__ PgStat_SubXactStatus ;


 int Assert (int) ;
 TYPE_2__* get_tabstat_stack_level (int) ;
 int pfree (TYPE_2__*) ;
 TYPE_2__* pgStatXactStack ;
 int pgstat_truncate_restore_counters (TYPE_2__*) ;
 int pgstat_truncate_save_counters (TYPE_2__*) ;

void
AtEOSubXact_PgStat(bool isCommit, int nestDepth)
{
 PgStat_SubXactStatus *xact_state;





 xact_state = pgStatXactStack;
 if (xact_state != ((void*)0) &&
  xact_state->nest_level >= nestDepth)
 {
  PgStat_TableXactStatus *trans;
  PgStat_TableXactStatus *next_trans;


  pgStatXactStack = xact_state->prev;

  for (trans = xact_state->first; trans != ((void*)0); trans = next_trans)
  {
   PgStat_TableStatus *tabstat;

   next_trans = trans->next;
   Assert(trans->nest_level == nestDepth);
   tabstat = trans->parent;
   Assert(tabstat->trans == trans);
   if (isCommit)
   {
    if (trans->upper && trans->upper->nest_level == nestDepth - 1)
    {
     if (trans->truncated)
     {

      pgstat_truncate_save_counters(trans->upper);

      trans->upper->tuples_inserted = trans->tuples_inserted;
      trans->upper->tuples_updated = trans->tuples_updated;
      trans->upper->tuples_deleted = trans->tuples_deleted;
     }
     else
     {
      trans->upper->tuples_inserted += trans->tuples_inserted;
      trans->upper->tuples_updated += trans->tuples_updated;
      trans->upper->tuples_deleted += trans->tuples_deleted;
     }
     tabstat->trans = trans->upper;
     pfree(trans);
    }
    else
    {
     PgStat_SubXactStatus *upper_xact_state;

     upper_xact_state = get_tabstat_stack_level(nestDepth - 1);
     trans->next = upper_xact_state->first;
     upper_xact_state->first = trans;
     trans->nest_level = nestDepth - 1;
    }
   }
   else
   {






    pgstat_truncate_restore_counters(trans);

    tabstat->t_counts.t_tuples_inserted += trans->tuples_inserted;
    tabstat->t_counts.t_tuples_updated += trans->tuples_updated;
    tabstat->t_counts.t_tuples_deleted += trans->tuples_deleted;

    tabstat->t_counts.t_delta_dead_tuples +=
     trans->tuples_inserted + trans->tuples_updated;
    tabstat->trans = trans->upper;
    pfree(trans);
   }
  }
  pfree(xact_state);
 }
}
