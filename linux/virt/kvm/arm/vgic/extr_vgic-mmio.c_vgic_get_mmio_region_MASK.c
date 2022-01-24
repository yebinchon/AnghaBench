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
struct vgic_register_region {int dummy; } ;
struct vgic_io_device {scalar_t__ base_addr; int /*<<< orphan*/  nr_regions; int /*<<< orphan*/  regions; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
typedef  scalar_t__ gpa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct vgic_register_region const*,scalar_t__,int) ; 
 struct vgic_register_region* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

const struct vgic_register_region *
FUNC2(struct kvm_vcpu *vcpu, struct vgic_io_device *iodev,
		     gpa_t addr, int len)
{
	const struct vgic_register_region *region;

	region = FUNC1(iodev->regions, iodev->nr_regions,
				       addr - iodev->base_addr);
	if (!region || !FUNC0(vcpu->kvm, region, addr, len))
		return NULL;

	return region;
}