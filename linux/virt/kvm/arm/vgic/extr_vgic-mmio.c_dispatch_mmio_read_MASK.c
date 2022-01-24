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
struct vgic_register_region {unsigned long (* read ) (struct kvm_vcpu*,int /*<<< orphan*/ ,int) ;unsigned long (* its_read ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
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
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,int,unsigned long) ; 
 struct vgic_register_region* FUNC7 (struct kvm_vcpu*,struct vgic_io_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct kvm_vcpu *vcpu, struct kvm_io_device *dev,
			      gpa_t addr, int len, void *val)
{
	struct vgic_io_device *iodev = FUNC0(dev);
	const struct vgic_register_region *region;
	unsigned long data = 0;

	region = FUNC7(vcpu, iodev, addr, len);
	if (!region) {
		FUNC1(val, 0, len);
		return 0;
	}

	switch (iodev->iodev_type) {
	case IODEV_CPUIF:
		data = region->read(vcpu, addr, len);
		break;
	case IODEV_DIST:
		data = region->read(vcpu, addr, len);
		break;
	case IODEV_REDIST:
		data = region->read(iodev->redist_vcpu, addr, len);
		break;
	case IODEV_ITS:
		data = region->its_read(vcpu->kvm, iodev->its, addr, len);
		break;
	}

	FUNC6(val, len, data);
	return 0;
}