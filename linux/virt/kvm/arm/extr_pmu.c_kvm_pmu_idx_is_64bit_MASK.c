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
typedef  scalar_t__ u64 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 scalar_t__ ARMV8_PMU_CYCLE_IDX ; 
 int ARMV8_PMU_PMCR_LC ; 
 int /*<<< orphan*/  PMCR_EL0 ; 
 int FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct kvm_vcpu *vcpu, u64 select_idx)
{
	return (select_idx == ARMV8_PMU_CYCLE_IDX &&
		FUNC0(vcpu, PMCR_EL0) & ARMV8_PMU_PMCR_LC);
}