
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_attr_t ;


 int MAP_ANON ;
 int MAP_SHARED ;
 int MAX (int,int ) ;
 int MUTEX_INIT (void*) ;
 int PFUNC () ;
 int PROT_READ ;
 int PROT_WRITE ;
 int PTHREAD_STACK_MIN ;
 int allocator_thread ;
 int assert (void*) ;
 int initpipe (int ) ;
 void* internal_ips ;
 void* internal_ips_lock ;
 int memset (void*,int ,int) ;
 void* mmap (int ,int,int,int,int,int ) ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setstacksize (int *,int ) ;
 int pthread_create (int *,int *,int ,int ) ;
 int req_pipefd ;
 int resp_pipefd ;
 int threadfunc ;

void at_init(void) {
 PFUNC();
 void *shm = mmap(0, 4096, PROT_WRITE|PROT_READ, MAP_ANON|MAP_SHARED, -1, 0);
 assert(shm);
 internal_ips_lock = shm;
 internal_ips = (void*)((char*)shm + 2048);

 MUTEX_INIT(internal_ips_lock);
 memset(internal_ips, 0, sizeof *internal_ips);
 initpipe(req_pipefd);
 initpipe(resp_pipefd);
 pthread_attr_t allocator_thread_attr;
 pthread_attr_init(&allocator_thread_attr);
 pthread_attr_setstacksize(&allocator_thread_attr, MAX(16 * 1024, PTHREAD_STACK_MIN));
 pthread_create(&allocator_thread, &allocator_thread_attr, threadfunc, 0);
 pthread_attr_destroy(&allocator_thread_attr);
}
