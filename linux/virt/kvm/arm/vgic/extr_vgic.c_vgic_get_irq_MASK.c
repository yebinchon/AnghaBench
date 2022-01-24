#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct vgic_irq {int dummy; } ;
struct TYPE_8__ {struct vgic_irq* private_irqs; } ;
struct TYPE_7__ {TYPE_4__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_5__ {size_t nr_spis; struct vgic_irq* spis; } ;
struct TYPE_6__ {TYPE_1__ vgic; } ;
struct kvm {TYPE_2__ arch; } ;

/* Variables and functions */
 size_t VGIC_MAX_PRIVATE ; 
 size_t VGIC_MIN_LPI ; 
 size_t VGIC_NR_PRIVATE_IRQS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t FUNC1 (size_t,size_t) ; 
 struct vgic_irq* FUNC2 (struct kvm*,size_t) ; 

struct vgic_irq *FUNC3(struct kvm *kvm, struct kvm_vcpu *vcpu,
			      u32 intid)
{
	/* SGIs and PPIs */
	if (intid <= VGIC_MAX_PRIVATE) {
		intid = FUNC1(intid, VGIC_MAX_PRIVATE + 1);
		return &vcpu->arch.vgic_cpu.private_irqs[intid];
	}

	/* SPIs */
	if (intid < (kvm->arch.vgic.nr_spis + VGIC_NR_PRIVATE_IRQS)) {
		intid = FUNC1(intid, kvm->arch.vgic.nr_spis + VGIC_NR_PRIVATE_IRQS);
		return &kvm->arch.vgic.spis[intid - VGIC_NR_PRIVATE_IRQS];
	}

	/* LPIs */
	if (intid >= VGIC_MIN_LPI)
		return FUNC2(kvm, intid);

	FUNC0(1, "Looking up struct vgic_irq for reserved INTID");
	return NULL;
}