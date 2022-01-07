
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_map {int emul_ptimer; int direct_ptimer; int direct_vtimer; } ;
struct kvm_vcpu {int dummy; } ;
struct arch_timer_cpu {int bg_timer; } ;


 int get_timer_map (struct kvm_vcpu*,struct timer_map*) ;
 int kvm_timer_earliest_exp (struct kvm_vcpu*) ;
 int kvm_timer_irq_can_fire (int ) ;
 int soft_timer_start (int *,int ) ;
 struct arch_timer_cpu* vcpu_timer (struct kvm_vcpu*) ;

__attribute__((used)) static void kvm_timer_blocking(struct kvm_vcpu *vcpu)
{
 struct arch_timer_cpu *timer = vcpu_timer(vcpu);
 struct timer_map map;

 get_timer_map(vcpu, &map);





 if (!kvm_timer_irq_can_fire(map.direct_vtimer) &&
     !kvm_timer_irq_can_fire(map.direct_ptimer) &&
     !kvm_timer_irq_can_fire(map.emul_ptimer))
  return;





 soft_timer_start(&timer->bg_timer, kvm_timer_earliest_exp(vcpu));
}
