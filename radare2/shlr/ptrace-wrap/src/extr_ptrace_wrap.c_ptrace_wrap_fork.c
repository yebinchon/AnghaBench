
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void (* child_callback ) (void*) ;int* _errno; void* child_callback_user; } ;
struct TYPE_6__ {TYPE_1__ fork; int type; } ;
struct TYPE_7__ {scalar_t__ th; scalar_t__ fork_result; int result_sem; int request_sem; TYPE_2__ request; } ;
typedef TYPE_3__ ptrace_wrap_instance ;
typedef scalar_t__ pid_t ;


 int PTRACE_WRAP_REQUEST_TYPE_FORK ;
 int errno ;
 scalar_t__ fork () ;
 scalar_t__ pthread_self () ;
 int sem_post (int *) ;
 int sem_wait (int *) ;

pid_t ptrace_wrap_fork(ptrace_wrap_instance *inst, void (*child_callback)(void *), void *child_callback_user) {
 if (inst->th == pthread_self ()) {
  pid_t r = fork ();
  if (r == 0) {
   child_callback (child_callback_user);
   return 0;
  } else {
   return r;
  }
 }

 int _errno = 0;
 inst->request.type = PTRACE_WRAP_REQUEST_TYPE_FORK;
 inst->request.fork.child_callback = child_callback;
 inst->request.fork.child_callback_user = child_callback_user;
 inst->request.fork._errno = &_errno;
 sem_post (&inst->request_sem);
 sem_wait (&inst->result_sem);
 errno = _errno;
 return inst->fork_result;
}
