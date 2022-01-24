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
struct vgic_state_iter {scalar_t__ dist_id; scalar_t__ vcpu_id; scalar_t__ nr_cpus; int /*<<< orphan*/  intid; } ;
struct vgic_irq {int /*<<< orphan*/  irq_lock; } ;
struct seq_file {scalar_t__ private; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  initialized; } ;
struct TYPE_3__ {TYPE_2__ vgic; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 struct kvm_vcpu* FUNC0 (struct kvm*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,struct vgic_irq*,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 struct vgic_irq* FUNC6 (struct kvm*,struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm*,struct vgic_irq*) ; 

__attribute__((used)) static int FUNC8(struct seq_file *s, void *v)
{
	struct kvm *kvm = (struct kvm *)s->private;
	struct vgic_state_iter *iter = (struct vgic_state_iter *)v;
	struct vgic_irq *irq;
	struct kvm_vcpu *vcpu = NULL;
	unsigned long flags;

	if (iter->dist_id == 0) {
		FUNC1(s, &kvm->arch.vgic);
		return 0;
	}

	if (!kvm->arch.vgic.initialized)
		return 0;

	if (iter->vcpu_id < iter->nr_cpus)
		vcpu = FUNC0(kvm, iter->vcpu_id);

	irq = FUNC6(kvm, vcpu, iter->intid);
	if (!irq) {
		FUNC5(s, "       LPI %4d freed\n", iter->intid);
		return 0;
	}

	FUNC3(&irq->irq_lock, flags);
	FUNC2(s, irq, vcpu);
	FUNC4(&irq->irq_lock, flags);

	FUNC7(kvm, irq);
	return 0;
}