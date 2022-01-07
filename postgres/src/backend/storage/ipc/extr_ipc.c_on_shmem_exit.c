
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
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg_internal (char*) ;
 size_t on_shmem_exit_index ;
 TYPE_1__* on_shmem_exit_list ;

void
on_shmem_exit(pg_on_exit_callback function, Datum arg)
{
 if (on_shmem_exit_index >= MAX_ON_EXITS)
  ereport(FATAL,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg_internal("out of on_shmem_exit slots")));

 on_shmem_exit_list[on_shmem_exit_index].function = function;
 on_shmem_exit_list[on_shmem_exit_index].arg = arg;

 ++on_shmem_exit_index;

 if (!atexit_callback_setup)
 {
  atexit(atexit_callback);
  atexit_callback_setup = 1;
 }
}
