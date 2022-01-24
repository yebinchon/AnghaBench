#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct vgic_redist_region {int base; int free_index; } ;
struct vgic_cpu {struct vgic_redist_region* rdreg; } ;
struct TYPE_2__ {struct vgic_cpu vgic_cpu; } ;
struct kvm_vcpu {int vcpu_id; int /*<<< orphan*/  kvm; TYPE_1__ arch; } ;
typedef  int gpa_t ;

/* Variables and functions */
 unsigned long FUNC0 (int,int /*<<< orphan*/ ) ; 
 int GICR_TYPER ; 
 int GICR_TYPER_LAST ; 
 int GICR_TYPER_PLPIS ; 
 int KVM_VGIC_V3_REDIST_SIZE ; 
 unsigned long FUNC1 (int,int,unsigned int) ; 
 unsigned long FUNC2 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC4(struct kvm_vcpu *vcpu,
					      gpa_t addr, unsigned int len)
{
	unsigned long mpidr = FUNC2(vcpu);
	struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;
	struct vgic_redist_region *rdreg = vgic_cpu->rdreg;
	int target_vcpu_id = vcpu->vcpu_id;
	gpa_t last_rdist_typer = rdreg->base + GICR_TYPER +
			(rdreg->free_index - 1) * KVM_VGIC_V3_REDIST_SIZE;
	u64 value;

	value = (u64)(mpidr & FUNC0(23, 0)) << 32;
	value |= ((target_vcpu_id & 0xffff) << 8);

	if (addr == last_rdist_typer)
		value |= GICR_TYPER_LAST;
	if (FUNC3(vcpu->kvm))
		value |= GICR_TYPER_PLPIS;

	return FUNC1(value, addr & 7, len);
}