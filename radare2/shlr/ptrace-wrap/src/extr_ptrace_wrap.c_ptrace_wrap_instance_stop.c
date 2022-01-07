
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
struct TYPE_5__ {int result_sem; int request_sem; int th; TYPE_1__ request; } ;
typedef TYPE_2__ ptrace_wrap_instance ;


 int PTRACE_WRAP_REQUEST_TYPE_STOP ;
 int pthread_join (int ,int *) ;
 int sem_destroy (int *) ;
 int sem_post (int *) ;

void ptrace_wrap_instance_stop(ptrace_wrap_instance *inst) {
 inst->request.type = PTRACE_WRAP_REQUEST_TYPE_STOP;
 sem_post (&inst->request_sem);
 pthread_join (inst->th, ((void*)0));
 sem_destroy (&inst->request_sem);
 sem_destroy (&inst->result_sem);
}
