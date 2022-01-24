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
struct vgic_its {int /*<<< orphan*/  its_lock; } ;
struct kvm_msi {int /*<<< orphan*/  data; int /*<<< orphan*/  devid; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vgic_its*) ; 
 int FUNC1 (struct vgic_its*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*,struct kvm_msi*) ; 
 int FUNC5 (struct kvm*,struct vgic_its*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vgic_its* FUNC6 (struct kvm*,struct kvm_msi*) ; 

int FUNC7(struct kvm *kvm, struct kvm_msi *msi)
{
	struct vgic_its *its;
	int ret;

	if (!FUNC4(kvm, msi))
		return 1;

	its = FUNC6(kvm, msi);
	if (FUNC0(its))
		return FUNC1(its);

	FUNC2(&its->its_lock);
	ret = FUNC5(kvm, its, msi->devid, msi->data);
	FUNC3(&its->its_lock);

	if (ret < 0)
		return ret;

	/*
	 * KVM_SIGNAL_MSI demands a return value > 0 for success and 0
	 * if the guest has blocked the MSI. So we map any LPI mapping
	 * related error to that.
	 */
	if (ret)
		return 0;
	else
		return 1;
}