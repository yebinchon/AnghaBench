
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t num_dead_tuples; size_t max_dead_tuples; int * dead_tuples; } ;
typedef TYPE_1__ LVRelStats ;
typedef int * ItemPointer ;


 int PROGRESS_VACUUM_NUM_DEAD_TUPLES ;
 int pgstat_progress_update_param (int ,size_t) ;

__attribute__((used)) static void
lazy_record_dead_tuple(LVRelStats *vacrelstats,
        ItemPointer itemptr)
{





 if (vacrelstats->num_dead_tuples < vacrelstats->max_dead_tuples)
 {
  vacrelstats->dead_tuples[vacrelstats->num_dead_tuples] = *itemptr;
  vacrelstats->num_dead_tuples++;
  pgstat_progress_update_param(PROGRESS_VACUUM_NUM_DEAD_TUPLES,
          vacrelstats->num_dead_tuples);
 }
}
