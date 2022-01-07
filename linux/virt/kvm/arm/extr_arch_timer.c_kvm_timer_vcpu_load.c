
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timer_map {scalar_t__ emul_ptimer; TYPE_1__* direct_ptimer; TYPE_1__* direct_vtimer; } ;
struct kvm_vcpu {int dummy; } ;
struct arch_timer_cpu {int enabled; } ;
struct TYPE_3__ {int cntvoff; } ;


 int get_timer_map (struct kvm_vcpu*,struct timer_map*) ;
 int has_gic_active_state ;
 int kvm_timer_unblocking (struct kvm_vcpu*) ;
 int kvm_timer_vcpu_load_gic (TYPE_1__*) ;
 int kvm_timer_vcpu_load_nogic (struct kvm_vcpu*) ;
 int set_cntvoff (int ) ;
 scalar_t__ static_branch_likely (int *) ;
 int timer_emulate (scalar_t__) ;
 int timer_restore_state (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;
 struct arch_timer_cpu* vcpu_timer (struct kvm_vcpu*) ;

void kvm_timer_vcpu_load(struct kvm_vcpu *vcpu)
{
 struct arch_timer_cpu *timer = vcpu_timer(vcpu);
 struct timer_map map;

 if (unlikely(!timer->enabled))
  return;

 get_timer_map(vcpu, &map);

 if (static_branch_likely(&has_gic_active_state)) {
  kvm_timer_vcpu_load_gic(map.direct_vtimer);
  if (map.direct_ptimer)
   kvm_timer_vcpu_load_gic(map.direct_ptimer);
 } else {
  kvm_timer_vcpu_load_nogic(vcpu);
 }

 set_cntvoff(map.direct_vtimer->cntvoff);

 kvm_timer_unblocking(vcpu);

 timer_restore_state(map.direct_vtimer);
 if (map.direct_ptimer)
  timer_restore_state(map.direct_ptimer);

 if (map.emul_ptimer)
  timer_emulate(map.emul_ptimer);
}
