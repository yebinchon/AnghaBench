
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ before_shmem_exit_index ;
 scalar_t__ on_proc_exit_index ;
 scalar_t__ on_shmem_exit_index ;
 int reset_on_dsm_detach () ;

void
on_exit_reset(void)
{
 before_shmem_exit_index = 0;
 on_shmem_exit_index = 0;
 on_proc_exit_index = 0;
 reset_on_dsm_detach();
}
