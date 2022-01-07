
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chained; } ;
struct TYPE_4__ {TYPE_1__ pmu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct kvm_pmc {int idx; } ;


 struct kvm_vcpu* kvm_pmc_to_vcpu (struct kvm_pmc*) ;
 int test_bit (int,int ) ;

__attribute__((used)) static bool kvm_pmu_pmc_is_chained(struct kvm_pmc *pmc)
{
 struct kvm_vcpu *vcpu = kvm_pmc_to_vcpu(pmc);

 return test_bit(pmc->idx >> 1, vcpu->arch.pmu.chained);
}
