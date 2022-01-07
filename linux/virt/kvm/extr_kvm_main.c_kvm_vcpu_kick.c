
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int cpu; } ;


 scalar_t__ cpu_online (int) ;
 int get_cpu () ;
 scalar_t__ kvm_arch_vcpu_should_kick (struct kvm_vcpu*) ;
 scalar_t__ kvm_vcpu_wake_up (struct kvm_vcpu*) ;
 unsigned int nr_cpu_ids ;
 int put_cpu () ;
 int smp_send_reschedule (int) ;

void kvm_vcpu_kick(struct kvm_vcpu *vcpu)
{
 int me;
 int cpu = vcpu->cpu;

 if (kvm_vcpu_wake_up(vcpu))
  return;

 me = get_cpu();
 if (cpu != me && (unsigned)cpu < nr_cpu_ids && cpu_online(cpu))
  if (kvm_arch_vcpu_should_kick(vcpu))
   smp_send_reschedule(cpu);
 put_cpu();
}
