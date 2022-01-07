
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int preempt_notifier; } ;


 int get_cpu () ;
 int kvm_arch_vcpu_load (struct kvm_vcpu*,int) ;
 int preempt_notifier_register (int *) ;
 int put_cpu () ;

void vcpu_load(struct kvm_vcpu *vcpu)
{
 int cpu = get_cpu();
 preempt_notifier_register(&vcpu->preempt_notifier);
 kvm_arch_vcpu_load(vcpu, cpu);
 put_cpu();
}
