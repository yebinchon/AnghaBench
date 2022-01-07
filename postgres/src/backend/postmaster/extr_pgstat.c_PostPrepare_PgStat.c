
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* first; } ;
struct TYPE_6__ {int * trans; } ;
struct TYPE_5__ {TYPE_2__* parent; struct TYPE_5__* next; } ;
typedef TYPE_1__ PgStat_TableXactStatus ;
typedef TYPE_2__ PgStat_TableStatus ;
typedef TYPE_3__ PgStat_SubXactStatus ;


 TYPE_3__* pgStatXactStack ;
 int pgstat_clear_snapshot () ;

void
PostPrepare_PgStat(void)
{
 PgStat_SubXactStatus *xact_state;





 xact_state = pgStatXactStack;
 if (xact_state != ((void*)0))
 {
  PgStat_TableXactStatus *trans;

  for (trans = xact_state->first; trans != ((void*)0); trans = trans->next)
  {
   PgStat_TableStatus *tabstat;

   tabstat = trans->parent;
   tabstat->trans = ((void*)0);
  }
 }
 pgStatXactStack = ((void*)0);


 pgstat_clear_snapshot();
}
