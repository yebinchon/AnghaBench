
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int preempt_notifier; } ;


 int kvm_arch_vcpu_put (struct kvm_vcpu*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int preempt_notifier_unregister (int *) ;

void vcpu_put(struct kvm_vcpu *vcpu)
{
 preempt_disable();
 kvm_arch_vcpu_put(vcpu);
 preempt_notifier_unregister(&vcpu->preempt_notifier);
 preempt_enable();
}
