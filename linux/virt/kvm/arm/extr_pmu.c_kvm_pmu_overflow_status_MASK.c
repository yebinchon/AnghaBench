#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u64 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int ARMV8_PMU_PMCR_E ; 
 int /*<<< orphan*/  PMCNTENSET_EL0 ; 
 int /*<<< orphan*/  PMCR_EL0 ; 
 int /*<<< orphan*/  PMINTENSET_EL1 ; 
 int /*<<< orphan*/  PMOVSSET_EL0 ; 
 int FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kvm_vcpu*) ; 

__attribute__((used)) static u64 FUNC2(struct kvm_vcpu *vcpu)
{
	u64 reg = 0;

	if ((FUNC0(vcpu, PMCR_EL0) & ARMV8_PMU_PMCR_E)) {
		reg = FUNC0(vcpu, PMOVSSET_EL0);
		reg &= FUNC0(vcpu, PMCNTENSET_EL0);
		reg &= FUNC0(vcpu, PMINTENSET_EL1);
		reg &= FUNC1(vcpu);
	}

	return reg;
}