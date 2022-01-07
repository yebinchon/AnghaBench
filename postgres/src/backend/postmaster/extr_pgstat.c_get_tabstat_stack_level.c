
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nest_level; int * first; struct TYPE_4__* prev; } ;
typedef TYPE_1__ PgStat_SubXactStatus ;


 scalar_t__ MemoryContextAlloc (int ,int) ;
 int TopTransactionContext ;
 TYPE_1__* pgStatXactStack ;

__attribute__((used)) static PgStat_SubXactStatus *
get_tabstat_stack_level(int nest_level)
{
 PgStat_SubXactStatus *xact_state;

 xact_state = pgStatXactStack;
 if (xact_state == ((void*)0) || xact_state->nest_level != nest_level)
 {
  xact_state = (PgStat_SubXactStatus *)
   MemoryContextAlloc(TopTransactionContext,
          sizeof(PgStat_SubXactStatus));
  xact_state->nest_level = nest_level;
  xact_state->prev = pgStatXactStack;
  xact_state->first = ((void*)0);
  pgStatXactStack = xact_state;
 }
 return xact_state;
}
