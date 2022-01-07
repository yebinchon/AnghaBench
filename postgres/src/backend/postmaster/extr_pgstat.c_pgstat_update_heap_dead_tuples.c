
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t_delta_dead_tuples; } ;
struct TYPE_7__ {TYPE_1__ t_counts; } ;
struct TYPE_6__ {TYPE_3__* pgstat_info; } ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__ PgStat_TableStatus ;



void
pgstat_update_heap_dead_tuples(Relation rel, int delta)
{
 PgStat_TableStatus *pgstat_info = rel->pgstat_info;

 if (pgstat_info != ((void*)0))
  pgstat_info->t_counts.t_delta_dead_tuples -= delta;
}
