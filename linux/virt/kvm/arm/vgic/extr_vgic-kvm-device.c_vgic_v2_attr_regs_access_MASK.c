#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct vgic_reg_attr {int /*<<< orphan*/  addr; struct kvm_vcpu* vcpu; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_device_attr {int group; } ;
struct kvm_device {TYPE_1__* kvm; } ;
typedef  int /*<<< orphan*/  gpa_t ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  KVM_DEV_ARM_VGIC_GRP_CPU_REGS 129 
#define  KVM_DEV_ARM_VGIC_GRP_DIST_REGS 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (struct kvm_vcpu*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct kvm_vcpu*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct kvm_device*,struct kvm_device_attr*,struct vgic_reg_attr*) ; 

__attribute__((used)) static int FUNC8(struct kvm_device *dev,
				    struct kvm_device_attr *attr,
				    u32 *reg, bool is_write)
{
	struct vgic_reg_attr reg_attr;
	gpa_t addr;
	struct kvm_vcpu *vcpu;
	int ret;

	ret = FUNC7(dev, attr, &reg_attr);
	if (ret)
		return ret;

	vcpu = reg_attr.vcpu;
	addr = reg_attr.addr;

	FUNC1(&dev->kvm->lock);

	ret = FUNC4(dev->kvm);
	if (ret)
		goto out;

	if (!FUNC0(dev->kvm)) {
		ret = -EBUSY;
		goto out;
	}

	switch (attr->group) {
	case KVM_DEV_ARM_VGIC_GRP_CPU_REGS:
		ret = FUNC5(vcpu, is_write, addr, reg);
		break;
	case KVM_DEV_ARM_VGIC_GRP_DIST_REGS:
		ret = FUNC6(vcpu, is_write, addr, reg);
		break;
	default:
		ret = -EINVAL;
		break;
	}

	FUNC3(dev->kvm);
out:
	FUNC2(&dev->kvm->lock);
	return ret;
}