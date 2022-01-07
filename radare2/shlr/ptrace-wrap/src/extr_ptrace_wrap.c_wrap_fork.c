
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int child_callback_user; int (* child_callback ) (int ) ;} ;
struct TYPE_6__ {TYPE_1__ fork; } ;
struct TYPE_7__ {scalar_t__ fork_result; TYPE_2__ request; } ;
typedef TYPE_3__ ptrace_wrap_instance ;
typedef scalar_t__ pid_t ;


 scalar_t__ fork () ;
 int stub1 (int ) ;

__attribute__((used)) static void wrap_fork(ptrace_wrap_instance *inst) {
 pid_t r = fork();
 if (r == 0) {
  inst->request.fork.child_callback (inst->request.fork.child_callback_user);
 } else {
  inst->fork_result = r;
 }
}
