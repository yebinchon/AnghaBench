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
typedef  int /*<<< orphan*/  u64 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int ARMV8_PMU_PMCR_E ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PMCNTENSET_EL0 ; 
 int /*<<< orphan*/  PMCR_EL0 ; 
 int FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct kvm_vcpu *vcpu, u64 select_idx)
{
	return (FUNC1(vcpu, PMCR_EL0) & ARMV8_PMU_PMCR_E) &&
	       (FUNC1(vcpu, PMCNTENSET_EL0) & FUNC0(select_idx));
}