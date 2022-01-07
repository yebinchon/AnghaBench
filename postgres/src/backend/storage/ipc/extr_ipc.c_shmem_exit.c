
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int arg; int (* function ) (int,int ) ;} ;
struct TYPE_3__ {int arg; int (* function ) (int,int ) ;} ;


 int DEBUG3 ;
 scalar_t__ before_shmem_exit_index ;
 TYPE_2__* before_shmem_exit_list ;
 int dsm_backend_shutdown () ;
 int elog (int ,char*,int,scalar_t__) ;
 scalar_t__ on_shmem_exit_index ;
 TYPE_1__* on_shmem_exit_list ;
 int shmem_exit_inprogress ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;

void
shmem_exit(int code)
{
 shmem_exit_inprogress = 1;
 elog(DEBUG3, "shmem_exit(%d): %d before_shmem_exit callbacks to make",
   code, before_shmem_exit_index);
 while (--before_shmem_exit_index >= 0)
  before_shmem_exit_list[before_shmem_exit_index].function(code,
                 before_shmem_exit_list[before_shmem_exit_index].arg);
 before_shmem_exit_index = 0;
 dsm_backend_shutdown();
 elog(DEBUG3, "shmem_exit(%d): %d on_shmem_exit callbacks to make",
   code, on_shmem_exit_index);
 while (--on_shmem_exit_index >= 0)
  on_shmem_exit_list[on_shmem_exit_index].function(code,
               on_shmem_exit_list[on_shmem_exit_index].arg);
 on_shmem_exit_index = 0;

 shmem_exit_inprogress = 0;
}
