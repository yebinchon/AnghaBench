
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int BackendId ;


 int Assert (int) ;
 int * PqCommMethods ;
 int PqCommMqMethods ;
 int pq_mq_parallel_master_backend_id ;
 int pq_mq_parallel_master_pid ;

void
pq_set_parallel_master(pid_t pid, BackendId backend_id)
{
 Assert(PqCommMethods == &PqCommMqMethods);
 pq_mq_parallel_master_pid = pid;
 pq_mq_parallel_master_backend_id = backend_id;
}
