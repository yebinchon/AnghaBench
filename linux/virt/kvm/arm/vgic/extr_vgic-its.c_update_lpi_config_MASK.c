#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u64 ;
struct vgic_irq {int /*<<< orphan*/  host_irq; scalar_t__ hw; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  enabled; int /*<<< orphan*/  priority; struct kvm_vcpu* target_vcpu; scalar_t__ intid; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  propbaser; } ;
struct TYPE_4__ {TYPE_1__ vgic; } ;
struct kvm {TYPE_2__ arch; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ GIC_LPI_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct kvm*,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm*,struct vgic_irq*,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct kvm *kvm, struct vgic_irq *irq,
			     struct kvm_vcpu *filter_vcpu, bool needs_inv)
{
	u64 propbase = FUNC0(kvm->arch.vgic.propbaser);
	u8 prop;
	int ret;
	unsigned long flags;

	ret = FUNC4(kvm, propbase + irq->intid - GIC_LPI_OFFSET,
				  &prop, 1);

	if (ret)
		return ret;

	FUNC5(&irq->irq_lock, flags);

	if (!filter_vcpu || filter_vcpu == irq->target_vcpu) {
		irq->priority = FUNC2(prop);
		irq->enabled = FUNC1(prop);

		if (!irq->hw) {
			FUNC7(kvm, irq, flags);
			return 0;
		}
	}

	FUNC6(&irq->irq_lock, flags);

	if (irq->hw)
		return FUNC3(irq->host_irq, prop, needs_inv);

	return 0;
}