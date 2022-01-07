
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int t_truncated; int t_shared; int t_id; int deleted_pre_trunc; int updated_pre_trunc; int inserted_pre_trunc; int tuples_deleted; int tuples_updated; int tuples_inserted; } ;
typedef TYPE_1__ TwoPhasePgStatRecord ;
struct TYPE_10__ {int nest_level; TYPE_2__* first; int * prev; } ;
struct TYPE_9__ {int t_shared; int t_id; TYPE_2__* trans; } ;
struct TYPE_8__ {int nest_level; int truncated; int deleted_pre_trunc; int updated_pre_trunc; int inserted_pre_trunc; int tuples_deleted; int tuples_updated; int tuples_inserted; TYPE_3__* parent; int * upper; struct TYPE_8__* next; } ;
typedef TYPE_2__ PgStat_TableXactStatus ;
typedef TYPE_3__ PgStat_TableStatus ;
typedef TYPE_4__ PgStat_SubXactStatus ;


 int Assert (int) ;
 int RegisterTwoPhaseRecord (int ,int ,TYPE_1__*,int) ;
 int TWOPHASE_RM_PGSTAT_ID ;
 TYPE_4__* pgStatXactStack ;

void
AtPrepare_PgStat(void)
{
 PgStat_SubXactStatus *xact_state;

 xact_state = pgStatXactStack;
 if (xact_state != ((void*)0))
 {
  PgStat_TableXactStatus *trans;

  Assert(xact_state->nest_level == 1);
  Assert(xact_state->prev == ((void*)0));
  for (trans = xact_state->first; trans != ((void*)0); trans = trans->next)
  {
   PgStat_TableStatus *tabstat;
   TwoPhasePgStatRecord record;

   Assert(trans->nest_level == 1);
   Assert(trans->upper == ((void*)0));
   tabstat = trans->parent;
   Assert(tabstat->trans == trans);

   record.tuples_inserted = trans->tuples_inserted;
   record.tuples_updated = trans->tuples_updated;
   record.tuples_deleted = trans->tuples_deleted;
   record.inserted_pre_trunc = trans->inserted_pre_trunc;
   record.updated_pre_trunc = trans->updated_pre_trunc;
   record.deleted_pre_trunc = trans->deleted_pre_trunc;
   record.t_id = tabstat->t_id;
   record.t_shared = tabstat->t_shared;
   record.t_truncated = trans->truncated;

   RegisterTwoPhaseRecord(TWOPHASE_RM_PGSTAT_ID, 0,
           &record, sizeof(TwoPhasePgStatRecord));
  }
 }
}
