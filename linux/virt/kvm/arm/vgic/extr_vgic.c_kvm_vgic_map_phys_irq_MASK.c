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
struct vgic_irq {int /*<<< orphan*/  irq_lock; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct kvm_vcpu*,struct vgic_irq*,unsigned int,int (*) (int)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vgic_irq* FUNC4 (int /*<<< orphan*/ ,struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct vgic_irq*) ; 

int FUNC6(struct kvm_vcpu *vcpu, unsigned int host_irq,
			  u32 vintid, bool (*get_input_level)(int vindid))
{
	struct vgic_irq *irq = FUNC4(vcpu->kvm, vcpu, vintid);
	unsigned long flags;
	int ret;

	FUNC0(!irq);

	FUNC2(&irq->irq_lock, flags);
	ret = FUNC1(vcpu, irq, host_irq, get_input_level);
	FUNC3(&irq->irq_lock, flags);
	FUNC5(vcpu->kvm, irq);

	return ret;
}