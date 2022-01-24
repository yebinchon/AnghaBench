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
struct vgic_register_region {int /*<<< orphan*/  (* its_write ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned long) ;int /*<<< orphan*/  (* write ) (struct kvm_vcpu*,int /*<<< orphan*/ ,int,unsigned long) ;} ;
struct vgic_io_device {int iodev_type; int /*<<< orphan*/  its; struct kvm_vcpu* redist_vcpu; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
struct kvm_io_device {int dummy; } ;
typedef  int /*<<< orphan*/  gpa_t ;

/* Variables and functions */
#define  IODEV_CPUIF 131 
#define  IODEV_DIST 130 
#define  IODEV_ITS 129 
#define  IODEV_REDIST 128 
 struct vgic_io_device* FUNC0 (struct kvm_io_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned long) ; 
 unsigned long FUNC5 (void const*,int) ; 
 struct vgic_register_region* FUNC6 (struct kvm_vcpu*,struct vgic_io_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct kvm_vcpu *vcpu, struct kvm_io_device *dev,
			       gpa_t addr, int len, const void *val)
{
	struct vgic_io_device *iodev = FUNC0(dev);
	const struct vgic_register_region *region;
	unsigned long data = FUNC5(val, len);

	region = FUNC6(vcpu, iodev, addr, len);
	if (!region)
		return 0;

	switch (iodev->iodev_type) {
	case IODEV_CPUIF:
		region->write(vcpu, addr, len, data);
		break;
	case IODEV_DIST:
		region->write(vcpu, addr, len, data);
		break;
	case IODEV_REDIST:
		region->write(iodev->redist_vcpu, addr, len, data);
		break;
	case IODEV_ITS:
		region->its_write(vcpu->kvm, iodev->its, addr, len, data);
		break;
	}

	return 0;
}