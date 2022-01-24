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
typedef  unsigned int u8 ;
typedef  int u32 ;
struct vgic_irq {unsigned int pending_latch; int /*<<< orphan*/  irq_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  pendbaser; } ;
struct TYPE_4__ {TYPE_1__ vgic_cpu; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; TYPE_2__ arch; } ;
typedef  scalar_t__ gpa_t ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct kvm_vcpu*,int**) ; 
 struct vgic_irq* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct vgic_irq*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct vgic_irq*,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct kvm_vcpu *vcpu)
{
	gpa_t pendbase = FUNC0(vcpu->arch.vgic_cpu.pendbaser);
	struct vgic_irq *irq;
	int last_byte_offset = -1;
	int ret = 0;
	u32 *intids;
	int nr_irqs, i;
	unsigned long flags;
	u8 pendmask;

	nr_irqs = FUNC4(vcpu->kvm, vcpu, &intids);
	if (nr_irqs < 0)
		return nr_irqs;

	for (i = 0; i < nr_irqs; i++) {
		int byte_offset, bit_nr;

		byte_offset = intids[i] / BITS_PER_BYTE;
		bit_nr = intids[i] % BITS_PER_BYTE;

		/*
		 * For contiguously allocated LPIs chances are we just read
		 * this very same byte in the last iteration. Reuse that.
		 */
		if (byte_offset != last_byte_offset) {
			ret = FUNC2(vcpu->kvm,
						  pendbase + byte_offset,
						  &pendmask, 1);
			if (ret) {
				FUNC1(intids);
				return ret;
			}
			last_byte_offset = byte_offset;
		}

		irq = FUNC5(vcpu->kvm, NULL, intids[i]);
		FUNC3(&irq->irq_lock, flags);
		irq->pending_latch = pendmask & (1U << bit_nr);
		FUNC7(vcpu->kvm, irq, flags);
		FUNC6(vcpu->kvm, irq);
	}

	FUNC1(intids);

	return ret;
}