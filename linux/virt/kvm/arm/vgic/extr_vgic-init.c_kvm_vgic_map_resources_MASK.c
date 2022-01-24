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
struct vgic_dist {scalar_t__ vgic_model; } ;
struct TYPE_2__ {struct vgic_dist vgic; } ;
struct kvm {int /*<<< orphan*/  lock; TYPE_1__ arch; } ;

/* Variables and functions */
 scalar_t__ KVM_DEV_TYPE_ARM_VGIC_V2 ; 
 int /*<<< orphan*/  FUNC0 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct kvm*) ; 
 int FUNC5 (struct kvm*) ; 

int FUNC6(struct kvm *kvm)
{
	struct vgic_dist *dist = &kvm->arch.vgic;
	int ret = 0;

	FUNC2(&kvm->lock);
	if (!FUNC1(kvm))
		goto out;

	if (dist->vgic_model == KVM_DEV_TYPE_ARM_VGIC_V2)
		ret = FUNC4(kvm);
	else
		ret = FUNC5(kvm);

	if (ret)
		FUNC0(kvm);

out:
	FUNC3(&kvm->lock);
	return ret;
}