
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* (* func ) (void*) ;void* user; } ;
struct TYPE_6__ {TYPE_1__ func; int type; } ;
struct TYPE_7__ {scalar_t__ th; void* func_result; int result_sem; int request_sem; TYPE_2__ request; } ;
typedef TYPE_3__ ptrace_wrap_instance ;
typedef void* (* ptrace_wrap_func_func ) (void*) ;


 int PTRACE_WRAP_REQUEST_TYPE_FUNC ;
 scalar_t__ pthread_self () ;
 int sem_post (int *) ;
 int sem_wait (int *) ;

void *ptrace_wrap_func(ptrace_wrap_instance *inst, ptrace_wrap_func_func func, void *user) {
 if (inst->th == pthread_self ()) {
  return func (user);
 }

 inst->request.type = PTRACE_WRAP_REQUEST_TYPE_FUNC;
 inst->request.func.func = func;
 inst->request.func.user = user;
 sem_post (&inst->request_sem);
 sem_wait (&inst->result_sem);
 return inst->func_result;
}
