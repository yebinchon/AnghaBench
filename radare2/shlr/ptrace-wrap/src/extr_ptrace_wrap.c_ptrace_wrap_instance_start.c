
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int result_sem; int request_sem; int th; } ;
typedef TYPE_1__ ptrace_wrap_instance ;


 int pthread_create (int *,int *,void* (*) (void*),TYPE_1__*) ;
 int sem_destroy (int *) ;
 int sem_init (int *,int ,int ) ;
 scalar_t__ th_run ;

int ptrace_wrap_instance_start(ptrace_wrap_instance *inst) {
 int r = sem_init (&inst->request_sem, 0, 0);
 if (r != 0) {
  return r;
 }

 r = sem_init (&inst->result_sem, 0, 0);
 if (r != 0) {
  sem_destroy (&inst->request_sem);
  return r;
 }

 r = pthread_create (&inst->th, ((void*)0), (void *(*)(void *)) th_run, inst);
 if (r != 0) {
  sem_destroy (&inst->request_sem);
  sem_destroy (&inst->result_sem);
  return r;
 }

 return 0;
}
