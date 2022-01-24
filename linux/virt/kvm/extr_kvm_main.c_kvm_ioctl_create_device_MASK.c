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
struct kvm_device_ops {int (* create ) (struct kvm_device*,int) ;int /*<<< orphan*/  (* destroy ) (struct kvm_device*) ;int /*<<< orphan*/  name; int /*<<< orphan*/  (* init ) (struct kvm_device*) ;} ;
struct kvm_device {int /*<<< orphan*/  vm_node; struct kvm* kvm; struct kvm_device_ops* ops; } ;
struct kvm_create_device {int flags; int fd; int /*<<< orphan*/  type; } ;
struct kvm {int /*<<< orphan*/  lock; int /*<<< orphan*/  devices; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_device_ops**) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL_ACCOUNT ; 
 int KVM_CREATE_DEVICE_TEST ; 
 int O_CLOEXEC ; 
 int O_RDWR ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct kvm_device*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_device*) ; 
 int /*<<< orphan*/  kvm_device_fops ; 
 struct kvm_device_ops** kvm_device_ops_table ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*) ; 
 struct kvm_device* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct kvm_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_device*) ; 

__attribute__((used)) static int FUNC14(struct kvm *kvm,
				   struct kvm_create_device *cd)
{
	struct kvm_device_ops *ops = NULL;
	struct kvm_device *dev;
	bool test = cd->flags & KVM_CREATE_DEVICE_TEST;
	int type;
	int ret;

	if (cd->type >= FUNC0(kvm_device_ops_table))
		return -ENODEV;

	type = FUNC2(cd->type, FUNC0(kvm_device_ops_table));
	ops = kvm_device_ops_table[type];
	if (ops == NULL)
		return -ENODEV;

	if (test)
		return 0;

	dev = FUNC6(sizeof(*dev), GFP_KERNEL_ACCOUNT);
	if (!dev)
		return -ENOMEM;

	dev->ops = ops;
	dev->kvm = kvm;

	FUNC9(&kvm->lock);
	ret = ops->create(dev, type);
	if (ret < 0) {
		FUNC10(&kvm->lock);
		FUNC3(dev);
		return ret;
	}
	FUNC7(&dev->vm_node, &kvm->devices);
	FUNC10(&kvm->lock);

	if (ops->init)
		ops->init(dev);

	FUNC4(kvm);
	ret = FUNC1(ops->name, &kvm_device_fops, dev, O_RDWR | O_CLOEXEC);
	if (ret < 0) {
		FUNC5(kvm);
		FUNC9(&kvm->lock);
		FUNC8(&dev->vm_node);
		FUNC10(&kvm->lock);
		ops->destroy(dev);
		return ret;
	}

	cd->fd = ret;
	return 0;
}