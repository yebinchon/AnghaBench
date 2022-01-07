
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int nest_level; scalar_t__ tuples_deleted; scalar_t__ tuples_updated; scalar_t__ tuples_inserted; } ;
struct TYPE_7__ {TYPE_3__* trans; } ;
struct TYPE_6__ {TYPE_2__* pgstat_info; } ;
typedef TYPE_1__* Relation ;
typedef TYPE_2__ PgStat_TableStatus ;


 int GetCurrentTransactionNestLevel () ;
 int add_tabstat_xact_level (TYPE_2__*,int) ;
 int pgstat_truncate_save_counters (TYPE_3__*) ;

void
pgstat_count_truncate(Relation rel)
{
 PgStat_TableStatus *pgstat_info = rel->pgstat_info;

 if (pgstat_info != ((void*)0))
 {

  int nest_level = GetCurrentTransactionNestLevel();

  if (pgstat_info->trans == ((void*)0) ||
   pgstat_info->trans->nest_level != nest_level)
   add_tabstat_xact_level(pgstat_info, nest_level);

  pgstat_truncate_save_counters(pgstat_info->trans);
  pgstat_info->trans->tuples_inserted = 0;
  pgstat_info->trans->tuples_updated = 0;
  pgstat_info->trans->tuples_deleted = 0;
 }
}
