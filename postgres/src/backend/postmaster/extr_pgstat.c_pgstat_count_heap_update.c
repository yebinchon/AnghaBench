
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int t_tuples_hot_updated; } ;
struct TYPE_10__ {TYPE_2__ t_counts; TYPE_1__* trans; } ;
struct TYPE_9__ {TYPE_4__* pgstat_info; } ;
struct TYPE_7__ {int nest_level; int tuples_updated; } ;
typedef TYPE_3__* Relation ;
typedef TYPE_4__ PgStat_TableStatus ;


 int GetCurrentTransactionNestLevel () ;
 int add_tabstat_xact_level (TYPE_4__*,int) ;

void
pgstat_count_heap_update(Relation rel, bool hot)
{
 PgStat_TableStatus *pgstat_info = rel->pgstat_info;

 if (pgstat_info != ((void*)0))
 {

  int nest_level = GetCurrentTransactionNestLevel();

  if (pgstat_info->trans == ((void*)0) ||
   pgstat_info->trans->nest_level != nest_level)
   add_tabstat_xact_level(pgstat_info, nest_level);

  pgstat_info->trans->tuples_updated++;


  if (hot)
   pgstat_info->t_counts.t_tuples_hot_updated++;
 }
}
