
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ptrace_wrap_ptrace_request ;
struct TYPE_5__ {int* _errno; void* data; void* addr; int pid; int request; } ;
struct TYPE_6__ {TYPE_1__ ptrace; int type; } ;
struct TYPE_7__ {scalar_t__ th; long ptrace_result; int result_sem; int request_sem; TYPE_2__ request; } ;
typedef TYPE_3__ ptrace_wrap_instance ;
typedef int pid_t ;


 int PTRACE_WRAP_REQUEST_TYPE_PTRACE ;
 int errno ;
 scalar_t__ pthread_self () ;
 long ptrace (int ,int ,void*,void*) ;
 int sem_post (int *) ;
 int sem_wait (int *) ;

long ptrace_wrap(ptrace_wrap_instance *inst, ptrace_wrap_ptrace_request request, pid_t pid, void *addr, void *data) {
 if (inst->th == pthread_self ()) {
  return ptrace (request, pid, addr, data);
 }

 int _errno = 0;
 inst->request.type = PTRACE_WRAP_REQUEST_TYPE_PTRACE;
 inst->request.ptrace.request = request;
 inst->request.ptrace.pid = pid;
 inst->request.ptrace.addr = addr;
 inst->request.ptrace.data = data;
 inst->request.ptrace._errno = &_errno;
 sem_post (&inst->request_sem);
 sem_wait (&inst->result_sem);
 errno = _errno;
 return inst->ptrace_result;
}
