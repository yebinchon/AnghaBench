
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_map {int * emul_ptimer; int * direct_ptimer; void* direct_vtimer; } ;
struct kvm_vcpu {int vcpu_id; } ;


 scalar_t__ has_vhe () ;
 int trace_kvm_get_timer_map (int ,struct timer_map*) ;
 void* vcpu_ptimer (struct kvm_vcpu*) ;
 void* vcpu_vtimer (struct kvm_vcpu*) ;

__attribute__((used)) static void get_timer_map(struct kvm_vcpu *vcpu, struct timer_map *map)
{
 if (has_vhe()) {
  map->direct_vtimer = vcpu_vtimer(vcpu);
  map->direct_ptimer = vcpu_ptimer(vcpu);
  map->emul_ptimer = ((void*)0);
 } else {
  map->direct_vtimer = vcpu_vtimer(vcpu);
  map->direct_ptimer = ((void*)0);
  map->emul_ptimer = vcpu_ptimer(vcpu);
 }

 trace_kvm_get_timer_map(vcpu->vcpu_id, map);
}
