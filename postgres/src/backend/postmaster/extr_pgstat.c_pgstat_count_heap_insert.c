
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* trans; } ;
struct TYPE_7__ {TYPE_3__* pgstat_info; } ;
struct TYPE_6__ {int nest_level; int tuples_inserted; } ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__ PgStat_TableStatus ;
typedef scalar_t__ PgStat_Counter ;


 int GetCurrentTransactionNestLevel () ;
 int add_tabstat_xact_level (TYPE_3__*,int) ;

void
pgstat_count_heap_insert(Relation rel, PgStat_Counter n)
{
 PgStat_TableStatus *pgstat_info = rel->pgstat_info;

 if (pgstat_info != ((void*)0))
 {

  int nest_level = GetCurrentTransactionNestLevel();

  if (pgstat_info->trans == ((void*)0) ||
   pgstat_info->trans->nest_level != nest_level)
   add_tabstat_xact_level(pgstat_info, nest_level);

  pgstat_info->trans->tuples_inserted += n;
 }
}
