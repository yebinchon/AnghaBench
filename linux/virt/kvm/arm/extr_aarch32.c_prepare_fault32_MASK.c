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
typedef  int u32 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 unsigned long PSR_AA32_E_BIT ; 
 int PSR_AA32_I_BIT ; 
 unsigned long PSR_AA32_T_BIT ; 
 int /*<<< orphan*/  c12_VBAR ; 
 int /*<<< orphan*/  c1_SCTLR ; 
 int** return_offsets ; 
 int FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 unsigned long* FUNC1 (struct kvm_vcpu*) ; 
 int* FUNC2 (struct kvm_vcpu*) ; 
 int* FUNC3 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct kvm_vcpu *vcpu, u32 mode, u32 vect_offset)
{
	unsigned long cpsr;
	unsigned long new_spsr_value = *FUNC1(vcpu);
	bool is_thumb = (new_spsr_value & PSR_AA32_T_BIT);
	u32 return_offset = return_offsets[vect_offset >> 2][is_thumb];
	u32 sctlr = FUNC0(vcpu, c1_SCTLR);

	cpsr = mode | PSR_AA32_I_BIT;

	if (sctlr & (1 << 30))
		cpsr |= PSR_AA32_T_BIT;
	if (sctlr & (1 << 25))
		cpsr |= PSR_AA32_E_BIT;

	*FUNC1(vcpu) = cpsr;

	/* Note: These now point to the banked copies */
	FUNC4(vcpu, new_spsr_value);
	*FUNC3(vcpu, 14) = *FUNC2(vcpu) + return_offset;

	/* Branch to exception vector */
	if (sctlr & (1 << 13))
		vect_offset += 0xffff0000;
	else /* always have security exceptions */
		vect_offset += FUNC0(vcpu, c12_VBAR);

	*FUNC2(vcpu) = vect_offset;
}