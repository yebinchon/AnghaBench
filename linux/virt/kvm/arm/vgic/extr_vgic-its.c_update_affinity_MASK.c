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
struct vgic_irq {int /*<<< orphan*/  host_irq; scalar_t__ hw; int /*<<< orphan*/  irq_lock; struct kvm_vcpu* target_vcpu; } ;
struct TYPE_4__ {int /*<<< orphan*/  its_vpe; } ;
struct TYPE_5__ {TYPE_1__ vgic_v3; } ;
struct TYPE_6__ {TYPE_2__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct its_vlpi_map {int /*<<< orphan*/ * vpe; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct its_vlpi_map*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct its_vlpi_map*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct vgic_irq *irq, struct kvm_vcpu *vcpu)
{
	int ret = 0;
	unsigned long flags;

	FUNC2(&irq->irq_lock, flags);
	irq->target_vcpu = vcpu;
	FUNC3(&irq->irq_lock, flags);

	if (irq->hw) {
		struct its_vlpi_map map;

		ret = FUNC0(irq->host_irq, &map);
		if (ret)
			return ret;

		map.vpe = &vcpu->arch.vgic_cpu.vgic_v3.its_vpe;

		ret = FUNC1(irq->host_irq, &map);
	}

	return ret;
}