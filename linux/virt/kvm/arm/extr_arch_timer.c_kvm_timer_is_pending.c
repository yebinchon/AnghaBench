
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_map {int emul_ptimer; int direct_ptimer; int direct_vtimer; } ;
struct kvm_vcpu {int dummy; } ;


 int get_timer_map (struct kvm_vcpu*,struct timer_map*) ;
 scalar_t__ kvm_timer_should_fire (int ) ;

bool kvm_timer_is_pending(struct kvm_vcpu *vcpu)
{
 struct timer_map map;

 get_timer_map(vcpu, &map);

 return kvm_timer_should_fire(map.direct_vtimer) ||
        kvm_timer_should_fire(map.direct_ptimer) ||
        kvm_timer_should_fire(map.emul_ptimer);
}
