
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_map {TYPE_1__* emul_ptimer; scalar_t__ direct_ptimer; scalar_t__ direct_vtimer; } ;
struct kvm_vcpu {int dummy; } ;
struct arch_timer_cpu {int enabled; } ;
struct TYPE_2__ {int hrtimer; } ;


 int get_timer_map (struct kvm_vcpu*,struct timer_map*) ;
 int kvm_arch_vcpu_wq (struct kvm_vcpu*) ;
 int kvm_timer_blocking (struct kvm_vcpu*) ;
 int set_cntvoff (int ) ;
 int soft_timer_cancel (int *) ;
 scalar_t__ swait_active (int ) ;
 int timer_save_state (scalar_t__) ;
 scalar_t__ unlikely (int) ;
 struct arch_timer_cpu* vcpu_timer (struct kvm_vcpu*) ;

void kvm_timer_vcpu_put(struct kvm_vcpu *vcpu)
{
 struct arch_timer_cpu *timer = vcpu_timer(vcpu);
 struct timer_map map;

 if (unlikely(!timer->enabled))
  return;

 get_timer_map(vcpu, &map);

 timer_save_state(map.direct_vtimer);
 if (map.direct_ptimer)
  timer_save_state(map.direct_ptimer);
 if (map.emul_ptimer)
  soft_timer_cancel(&map.emul_ptimer->hrtimer);

 if (swait_active(kvm_arch_vcpu_wq(vcpu)))
  kvm_timer_blocking(vcpu);
 set_cntvoff(0);
}
