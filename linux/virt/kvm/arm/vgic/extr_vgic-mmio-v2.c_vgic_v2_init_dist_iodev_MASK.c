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
struct vgic_io_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  nr_regions; int /*<<< orphan*/  regions; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int SZ_4K ; 
 int /*<<< orphan*/  kvm_io_gic_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vgic_v2_dist_registers ; 

unsigned int FUNC2(struct vgic_io_device *dev)
{
	dev->regions = vgic_v2_dist_registers;
	dev->nr_regions = FUNC0(vgic_v2_dist_registers);

	FUNC1(&dev->dev, &kvm_io_gic_ops);

	return SZ_4K;
}