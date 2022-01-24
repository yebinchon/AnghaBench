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
struct vgic_its {int /*<<< orphan*/  its_lock; struct vgic_its* private; struct kvm* kvm; } ;
struct kvm_device {int /*<<< orphan*/  its_lock; struct kvm_device* private; struct kvm* kvm; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vgic_its*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*,struct vgic_its*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*,struct vgic_its*) ; 

__attribute__((used)) static void FUNC5(struct kvm_device *kvm_dev)
{
	struct kvm *kvm = kvm_dev->kvm;
	struct vgic_its *its = kvm_dev->private;

	FUNC1(&its->its_lock);

	FUNC4(kvm, its);
	FUNC3(kvm, its);

	FUNC2(&its->its_lock);
	FUNC0(its);
	FUNC0(kvm_dev);/* alloc by kvm_ioctl_create_device, free by .destroy */
}