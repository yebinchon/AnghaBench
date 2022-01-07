
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int kvm; } ;
struct arch_timer_cpu {int enabled; } ;


 int irqchip_in_kernel (int ) ;
 scalar_t__ unlikely (int) ;
 int unmask_vtimer_irq_user (struct kvm_vcpu*) ;
 struct arch_timer_cpu* vcpu_timer (struct kvm_vcpu*) ;

void kvm_timer_sync_hwstate(struct kvm_vcpu *vcpu)
{
 struct arch_timer_cpu *timer = vcpu_timer(vcpu);

 if (unlikely(!timer->enabled))
  return;

 if (unlikely(!irqchip_in_kernel(vcpu->kvm)))
  unmask_vtimer_irq_user(vcpu);
}
