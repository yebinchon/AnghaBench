
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* first; } ;
struct TYPE_7__ {TYPE_1__* trans; } ;
struct TYPE_6__ {int nest_level; struct TYPE_6__* next; TYPE_2__* parent; struct TYPE_6__* upper; } ;
typedef TYPE_1__ PgStat_TableXactStatus ;
typedef TYPE_2__ PgStat_TableStatus ;
typedef TYPE_3__ PgStat_SubXactStatus ;


 scalar_t__ MemoryContextAllocZero (int ,int) ;
 int TopTransactionContext ;
 TYPE_3__* get_tabstat_stack_level (int) ;

__attribute__((used)) static void
add_tabstat_xact_level(PgStat_TableStatus *pgstat_info, int nest_level)
{
 PgStat_SubXactStatus *xact_state;
 PgStat_TableXactStatus *trans;





 xact_state = get_tabstat_stack_level(nest_level);


 trans = (PgStat_TableXactStatus *)
  MemoryContextAllocZero(TopTransactionContext,
          sizeof(PgStat_TableXactStatus));
 trans->nest_level = nest_level;
 trans->upper = pgstat_info->trans;
 trans->parent = pgstat_info;
 trans->next = xact_state->first;
 xact_state->first = trans;
 pgstat_info->trans = trans;
}
