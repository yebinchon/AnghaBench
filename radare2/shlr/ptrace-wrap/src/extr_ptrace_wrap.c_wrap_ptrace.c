
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * _errno; int data; int addr; int pid; int request; } ;
struct TYPE_5__ {TYPE_2__ ptrace; } ;
struct TYPE_7__ {TYPE_1__ request; int ptrace_result; } ;
typedef TYPE_3__ ptrace_wrap_instance ;


 int errno ;
 int ptrace (int ,int ,int ,int ) ;

__attribute__((used)) static void wrap_ptrace(ptrace_wrap_instance *inst) {
 inst->ptrace_result = ptrace (
   inst->request.ptrace.request,
   inst->request.ptrace.pid,
   inst->request.ptrace.addr,
   inst->request.ptrace.data);
 if (inst->request.ptrace._errno) {
  *inst->request.ptrace._errno = errno;
 }
}
