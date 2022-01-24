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
typedef  int /*<<< orphan*/  u32 ;
struct vgic_io_device {int /*<<< orphan*/  iodev_type; int /*<<< orphan*/  nr_regions; int /*<<< orphan*/  regions; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IODEV_DIST ; 
 int FUNC1 (struct kvm_vcpu*,struct vgic_io_device*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vgic_v2_dist_registers ; 

int FUNC2(struct kvm_vcpu *vcpu, bool is_write,
			 int offset, u32 *val)
{
	struct vgic_io_device dev = {
		.regions = vgic_v2_dist_registers,
		.nr_regions = FUNC0(vgic_v2_dist_registers),
		.iodev_type = IODEV_DIST,
	};

	return FUNC1(vcpu, &dev, is_write, offset, val);
}