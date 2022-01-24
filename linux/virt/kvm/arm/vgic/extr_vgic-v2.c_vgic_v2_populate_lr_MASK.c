#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct vgic_irq {int intid; int active_source; int hwintid; scalar_t__ config; int pending_latch; int source; int line_level; int priority; scalar_t__ active; scalar_t__ hw; scalar_t__ group; } ;
struct TYPE_4__ {int* vgic_lr; } ;
struct TYPE_5__ {TYPE_1__ vgic_v2; } ;
struct TYPE_6__ {TYPE_2__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;

/* Variables and functions */
 int GICH_LR_ACTIVE_BIT ; 
 int GICH_LR_EOI ; 
 int GICH_LR_GROUP1 ; 
 int GICH_LR_HW ; 
 int GICH_LR_PENDING_BIT ; 
 int GICH_LR_PHYSID_CPUID_SHIFT ; 
 int GICH_LR_PRIORITY_SHIFT ; 
 scalar_t__ VGIC_CONFIG_EDGE ; 
 scalar_t__ VGIC_CONFIG_LEVEL ; 
 scalar_t__ FUNC0 (int,char*,int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct vgic_irq*) ; 
 scalar_t__ FUNC3 (struct vgic_irq*) ; 
 scalar_t__ FUNC4 (struct vgic_irq*) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(struct kvm_vcpu *vcpu, struct vgic_irq *irq, int lr)
{
	u32 val = irq->intid;
	bool allow_pending = true;

	if (irq->active) {
		val |= GICH_LR_ACTIVE_BIT;
		if (FUNC5(irq->intid))
			val |= irq->active_source << GICH_LR_PHYSID_CPUID_SHIFT;
		if (FUNC4(irq)) {
			allow_pending = false;
			val |= GICH_LR_EOI;
		}
	}

	if (irq->group)
		val |= GICH_LR_GROUP1;

	if (irq->hw) {
		val |= GICH_LR_HW;
		val |= irq->hwintid << GICH_LR_PHYSID_CPUID_SHIFT;
		/*
		 * Never set pending+active on a HW interrupt, as the
		 * pending state is kept at the physical distributor
		 * level.
		 */
		if (irq->active)
			allow_pending = false;
	} else {
		if (irq->config == VGIC_CONFIG_LEVEL) {
			val |= GICH_LR_EOI;

			/*
			 * Software resampling doesn't work very well
			 * if we allow P+A, so let's not do that.
			 */
			if (irq->active)
				allow_pending = false;
		}
	}

	if (allow_pending && FUNC2(irq)) {
		val |= GICH_LR_PENDING_BIT;

		if (irq->config == VGIC_CONFIG_EDGE)
			irq->pending_latch = false;

		if (FUNC5(irq->intid)) {
			u32 src = FUNC1(irq->source);

			if (FUNC0(!src, "No SGI source for INTID %d\n",
					   irq->intid))
				return;

			val |= (src - 1) << GICH_LR_PHYSID_CPUID_SHIFT;
			irq->source &= ~(1 << (src - 1));
			if (irq->source) {
				irq->pending_latch = true;
				val |= GICH_LR_EOI;
			}
		}
	}

	/*
	 * Level-triggered mapped IRQs are special because we only observe
	 * rising edges as input to the VGIC.  We therefore lower the line
	 * level here, so that we can take new virtual IRQs.  See
	 * vgic_v2_fold_lr_state for more info.
	 */
	if (FUNC3(irq) && (val & GICH_LR_PENDING_BIT))
		irq->line_level = false;

	/* The GICv2 LR only holds five bits of priority. */
	val |= (irq->priority >> 3) << GICH_LR_PRIORITY_SHIFT;

	vcpu->arch.vgic_cpu.vgic_v2.vgic_lr[lr] = val;
}