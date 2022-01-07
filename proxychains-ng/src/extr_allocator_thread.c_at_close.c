
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATM_EXIT ;
 int MUTEX_DESTROY (int ) ;
 int PFUNC () ;
 int allocator_thread ;
 int close (int ) ;
 int internal_ips_lock ;
 int pthread_join (int ,int *) ;
 int * req_pipefd ;
 int * resp_pipefd ;
 int write (int ,int const*,int) ;

void at_close(void) {
 PFUNC();
 const int msg = ATM_EXIT;
 write(req_pipefd[1], &msg, sizeof(int));
 pthread_join(allocator_thread, ((void*)0));
 close(req_pipefd[0]);
 close(req_pipefd[1]);
 close(resp_pipefd[0]);
 close(resp_pipefd[1]);
 MUTEX_DESTROY(internal_ips_lock);
}
