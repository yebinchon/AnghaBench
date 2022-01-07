
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ pg_on_exit_callback ;
struct TYPE_2__ {scalar_t__ function; scalar_t__ arg; } ;
typedef scalar_t__ Datum ;


 int before_shmem_exit_index ;
 TYPE_1__* before_shmem_exit_list ;

void
cancel_before_shmem_exit(pg_on_exit_callback function, Datum arg)
{
 if (before_shmem_exit_index > 0 &&
  before_shmem_exit_list[before_shmem_exit_index - 1].function
  == function &&
  before_shmem_exit_list[before_shmem_exit_index - 1].arg == arg)
  --before_shmem_exit_index;
}
