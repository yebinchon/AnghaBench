
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct preempt_notifier {int dummy; } ;
struct kvm_vcpu {int ready; int preempted; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ TASK_RUNNING ;
 int WRITE_ONCE (int ,int) ;
 TYPE_1__* current ;
 int kvm_arch_vcpu_put (struct kvm_vcpu*) ;
 struct kvm_vcpu* preempt_notifier_to_vcpu (struct preempt_notifier*) ;

__attribute__((used)) static void kvm_sched_out(struct preempt_notifier *pn,
     struct task_struct *next)
{
 struct kvm_vcpu *vcpu = preempt_notifier_to_vcpu(pn);

 if (current->state == TASK_RUNNING) {
  WRITE_ONCE(vcpu->preempted, 1);
  WRITE_ONCE(vcpu->ready, 1);
 }
 kvm_arch_vcpu_put(vcpu);
}
