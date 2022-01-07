
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pg_on_exit_callback ;
struct TYPE_2__ {int arg; int function; } ;
typedef int Datum ;


 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int FATAL ;
 size_t MAX_ON_EXITS ;
 int atexit (int ) ;
 int atexit_callback ;
 int atexit_callback_setup ;
 size_t before_shmem_exit_index ;
 TYPE_1__* before_shmem_exit_list ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg_internal (char*) ;

void
before_shmem_exit(pg_on_exit_callback function, Datum arg)
{
 if (before_shmem_exit_index >= MAX_ON_EXITS)
  ereport(FATAL,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg_internal("out of before_shmem_exit slots")));

 before_shmem_exit_list[before_shmem_exit_index].function = function;
 before_shmem_exit_list[before_shmem_exit_index].arg = arg;

 ++before_shmem_exit_index;

 if (!atexit_callback_setup)
 {
  atexit(atexit_callback);
  atexit_callback_setup = 1;
 }
}
