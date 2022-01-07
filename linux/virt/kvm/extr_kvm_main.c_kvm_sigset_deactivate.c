
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int sigset_active; } ;
struct TYPE_2__ {int real_blocked; } ;


 int SIG_SETMASK ;
 TYPE_1__* current ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;

void kvm_sigset_deactivate(struct kvm_vcpu *vcpu)
{
 if (!vcpu->sigset_active)
  return;

 sigprocmask(SIG_SETMASK, &current->real_blocked, ((void*)0));
 sigemptyset(&current->real_blocked);
}
