
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int kvm; } ;


 unsigned long HCR_TVM ;
 int stage2_flush_vm (int ) ;
 int trace_kvm_set_way_flush (int ,int ) ;
 int vcpu_has_cache_enabled (struct kvm_vcpu*) ;
 unsigned long* vcpu_hcr (struct kvm_vcpu*) ;
 int * vcpu_pc (struct kvm_vcpu*) ;

void kvm_set_way_flush(struct kvm_vcpu *vcpu)
{
 unsigned long hcr = *vcpu_hcr(vcpu);
 if (!(hcr & HCR_TVM)) {
  trace_kvm_set_way_flush(*vcpu_pc(vcpu),
     vcpu_has_cache_enabled(vcpu));
  stage2_flush_vm(vcpu->kvm);
  *vcpu_hcr(vcpu) = hcr | HCR_TVM;
 }
}
