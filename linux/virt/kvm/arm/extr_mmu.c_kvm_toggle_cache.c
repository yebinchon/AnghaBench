
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int kvm; } ;


 int HCR_TVM ;
 int stage2_flush_vm (int ) ;
 int trace_kvm_toggle_cache (int ,int,int) ;
 int vcpu_has_cache_enabled (struct kvm_vcpu*) ;
 int * vcpu_hcr (struct kvm_vcpu*) ;
 int * vcpu_pc (struct kvm_vcpu*) ;

void kvm_toggle_cache(struct kvm_vcpu *vcpu, bool was_enabled)
{
 bool now_enabled = vcpu_has_cache_enabled(vcpu);






 if (now_enabled != was_enabled)
  stage2_flush_vm(vcpu->kvm);


 if (now_enabled)
  *vcpu_hcr(vcpu) &= ~HCR_TVM;

 trace_kvm_toggle_cache(*vcpu_pc(vcpu), was_enabled, now_enabled);
}
