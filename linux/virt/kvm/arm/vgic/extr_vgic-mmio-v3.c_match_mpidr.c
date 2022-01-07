
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
typedef int u16 ;
struct kvm_vcpu {int dummy; } ;


 int BIT (int) ;
 int MPIDR_AFFINITY_LEVEL (unsigned long,int ) ;
 unsigned long MPIDR_LEVEL_MASK ;
 unsigned long kvm_vcpu_get_mpidr_aff (struct kvm_vcpu*) ;

__attribute__((used)) static int match_mpidr(u64 sgi_aff, u16 sgi_cpu_mask, struct kvm_vcpu *vcpu)
{
 unsigned long affinity;
 int level0;





 affinity = kvm_vcpu_get_mpidr_aff(vcpu);
 level0 = MPIDR_AFFINITY_LEVEL(affinity, 0);
 affinity &= ~MPIDR_LEVEL_MASK;


 if (sgi_aff != affinity)
  return -1;


 if (!(sgi_cpu_mask & BIT(level0)))
  return -1;

 return level0;
}
