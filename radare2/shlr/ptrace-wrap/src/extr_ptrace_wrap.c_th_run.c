
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int type; } ;
struct TYPE_8__ {int result_sem; TYPE_1__ request; int request_sem; } ;
typedef TYPE_2__ ptrace_wrap_instance ;






 int sem_post (int *) ;
 int sem_wait (int *) ;
 int wrap_fork (TYPE_2__*) ;
 int wrap_func (TYPE_2__*) ;
 int wrap_ptrace (TYPE_2__*) ;

__attribute__((used)) static void *th_run(ptrace_wrap_instance *inst) {
 while (1) {
  sem_wait (&inst->request_sem);
  switch (inst->request.type) {
  case 128:
   goto stop;
  case 129:
   wrap_ptrace (inst);
   break;
  case 131:
   wrap_fork (inst);
   break;
  case 130:
   wrap_func (inst);
   break;
  }
  sem_post (&inst->result_sem);
 }
stop:
 return ((void*)0);
}
