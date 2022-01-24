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
typedef  int u64 ;
typedef  int u32 ;
struct vgic_reg_attr {int /*<<< orphan*/  addr; struct kvm_vcpu* vcpu; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_device_attr {int group; int attr; } ;
struct kvm_device {TYPE_1__* kvm; } ;
typedef  int /*<<< orphan*/  gpa_t ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  KVM_DEV_ARM_VGIC_GRP_CPU_SYSREGS 131 
#define  KVM_DEV_ARM_VGIC_GRP_DIST_REGS 130 
#define  KVM_DEV_ARM_VGIC_GRP_LEVEL_INFO 129 
#define  KVM_DEV_ARM_VGIC_GRP_REDIST_REGS 128 
 unsigned int KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_MASK ; 
 unsigned int KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_SHIFT ; 
 unsigned int KVM_DEV_ARM_VGIC_LINE_LEVEL_INTID_MASK ; 
 int KVM_DEV_ARM_VGIC_SYSREG_INSTR_MASK ; 
 unsigned int VGIC_LEVEL_INFO_LINE_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (struct kvm_vcpu*,int,int,int*) ; 
 int FUNC7 (struct kvm_vcpu*,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC8 (struct kvm_vcpu*,int,unsigned int,int*) ; 
 int FUNC9 (struct kvm_device*,struct kvm_device_attr*,struct vgic_reg_attr*) ; 
 int FUNC10 (struct kvm_vcpu*,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC11(struct kvm_device *dev,
				    struct kvm_device_attr *attr,
				    u64 *reg, bool is_write)
{
	struct vgic_reg_attr reg_attr;
	gpa_t addr;
	struct kvm_vcpu *vcpu;
	int ret;
	u32 tmp32;

	ret = FUNC9(dev, attr, &reg_attr);
	if (ret)
		return ret;

	vcpu = reg_attr.vcpu;
	addr = reg_attr.addr;

	FUNC1(&dev->kvm->lock);

	if (FUNC3(!FUNC5(dev->kvm))) {
		ret = -EBUSY;
		goto out;
	}

	if (!FUNC0(dev->kvm)) {
		ret = -EBUSY;
		goto out;
	}

	switch (attr->group) {
	case KVM_DEV_ARM_VGIC_GRP_DIST_REGS:
		if (is_write)
			tmp32 = *reg;

		ret = FUNC7(vcpu, is_write, addr, &tmp32);
		if (!is_write)
			*reg = tmp32;
		break;
	case KVM_DEV_ARM_VGIC_GRP_REDIST_REGS:
		if (is_write)
			tmp32 = *reg;

		ret = FUNC10(vcpu, is_write, addr, &tmp32);
		if (!is_write)
			*reg = tmp32;
		break;
	case KVM_DEV_ARM_VGIC_GRP_CPU_SYSREGS: {
		u64 regid;

		regid = (attr->attr & KVM_DEV_ARM_VGIC_SYSREG_INSTR_MASK);
		ret = FUNC6(vcpu, is_write,
						  regid, reg);
		break;
	}
	case KVM_DEV_ARM_VGIC_GRP_LEVEL_INFO: {
		unsigned int info, intid;

		info = (attr->attr & KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_MASK) >>
			KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_SHIFT;
		if (info == VGIC_LEVEL_INFO_LINE_LEVEL) {
			intid = attr->attr &
				KVM_DEV_ARM_VGIC_LINE_LEVEL_INTID_MASK;
			ret = FUNC8(vcpu, is_write,
							      intid, reg);
		} else {
			ret = -EINVAL;
		}
		break;
	}
	default:
		ret = -EINVAL;
		break;
	}

	FUNC4(dev->kvm);
out:
	FUNC2(&dev->kvm->lock);
	return ret;
}