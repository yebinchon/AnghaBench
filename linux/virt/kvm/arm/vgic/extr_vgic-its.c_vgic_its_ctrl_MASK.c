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
typedef  int u64 ;
struct vgic_its_abi {int (* save_tables ) (struct vgic_its*) ;int (* restore_tables ) (struct vgic_its*) ;} ;
struct vgic_its {int /*<<< orphan*/  its_lock; } ;
struct kvm {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EBUSY ; 
#define  KVM_DEV_ARM_ITS_CTRL_RESET 130 
#define  KVM_DEV_ARM_ITS_RESTORE_TABLES 129 
#define  KVM_DEV_ARM_ITS_SAVE_TABLES 128 
 int KVM_DEV_ARM_VGIC_CTRL_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct vgic_its*) ; 
 int FUNC4 (struct vgic_its*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*) ; 
 struct vgic_its_abi* FUNC6 (struct vgic_its*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm*,struct vgic_its*) ; 

__attribute__((used)) static int FUNC8(struct kvm *kvm, struct vgic_its *its, u64 attr)
{
	const struct vgic_its_abi *abi = FUNC6(its);
	int ret = 0;

	if (attr == KVM_DEV_ARM_VGIC_CTRL_INIT) /* Nothing to do */
		return 0;

	FUNC1(&kvm->lock);
	FUNC1(&its->its_lock);

	if (!FUNC0(kvm)) {
		FUNC2(&its->its_lock);
		FUNC2(&kvm->lock);
		return -EBUSY;
	}

	switch (attr) {
	case KVM_DEV_ARM_ITS_CTRL_RESET:
		FUNC7(kvm, its);
		break;
	case KVM_DEV_ARM_ITS_SAVE_TABLES:
		ret = abi->save_tables(its);
		break;
	case KVM_DEV_ARM_ITS_RESTORE_TABLES:
		ret = abi->restore_tables(its);
		break;
	}

	FUNC5(kvm);
	FUNC2(&its->its_lock);
	FUNC2(&kvm->lock);
	return ret;
}