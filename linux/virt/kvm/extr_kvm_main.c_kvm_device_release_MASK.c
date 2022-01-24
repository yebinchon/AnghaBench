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
struct kvm_device {TYPE_1__* ops; int /*<<< orphan*/  vm_node; struct kvm* kvm; } ;
struct kvm {int /*<<< orphan*/  lock; } ;
struct inode {int dummy; } ;
struct file {struct kvm_device* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* release ) (struct kvm_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_device*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *filp)
{
	struct kvm_device *dev = filp->private_data;
	struct kvm *kvm = dev->kvm;

	if (dev->ops->release) {
		FUNC2(&kvm->lock);
		FUNC1(&dev->vm_node);
		dev->ops->release(dev);
		FUNC3(&kvm->lock);
	}

	FUNC0(kvm);
	return 0;
}