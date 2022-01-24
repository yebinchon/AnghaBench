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
struct vgic_irq {unsigned long source; int pending_latch; int /*<<< orphan*/  irq_lock; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
typedef  int gpa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vgic_irq* FUNC2 (int /*<<< orphan*/ ,struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct vgic_irq*) ; 

__attribute__((used)) static void FUNC4(struct kvm_vcpu *vcpu,
				     gpa_t addr, unsigned int len,
				     unsigned long val)
{
	u32 intid = addr & 0x0f;
	int i;
	unsigned long flags;

	for (i = 0; i < len; i++) {
		struct vgic_irq *irq = FUNC2(vcpu->kvm, vcpu, intid + i);

		FUNC0(&irq->irq_lock, flags);

		irq->source &= ~((val >> (i * 8)) & 0xff);
		if (!irq->source)
			irq->pending_latch = false;

		FUNC1(&irq->irq_lock, flags);
		FUNC3(vcpu->kvm, irq);
	}
}