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
typedef  int /*<<< orphan*/  u32 ;
struct vgic_irq {int active; int pending_latch; int line_level; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  hw; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vgic_irq* FUNC2 (int /*<<< orphan*/ ,struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct vgic_irq*) ; 

void FUNC4(struct kvm_vcpu *vcpu, u32 vintid)
{
	struct vgic_irq *irq = FUNC2(vcpu->kvm, vcpu, vintid);
	unsigned long flags;

	if (!irq->hw)
		goto out;

	FUNC0(&irq->irq_lock, flags);
	irq->active = false;
	irq->pending_latch = false;
	irq->line_level = false;
	FUNC1(&irq->irq_lock, flags);
out:
	FUNC3(vcpu->kvm, irq);
}