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
struct vgic_its_abi {int ite_esz; } ;
struct vgic_its {int dummy; } ;
struct its_device {int /*<<< orphan*/  num_eventid_bits; int /*<<< orphan*/  itt_addr; } ;
typedef  int /*<<< orphan*/  gpa_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vgic_its*,int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct its_device*) ; 
 struct vgic_its_abi* FUNC2 (struct vgic_its*) ; 
 int /*<<< orphan*/  vgic_its_restore_ite ; 

__attribute__((used)) static int FUNC3(struct vgic_its *its, struct its_device *dev)
{
	const struct vgic_its_abi *abi = FUNC2(its);
	gpa_t base = dev->itt_addr;
	int ret;
	int ite_esz = abi->ite_esz;
	size_t max_size = FUNC0(dev->num_eventid_bits) * ite_esz;

	ret = FUNC1(its, base, max_size, ite_esz, 0,
			     vgic_its_restore_ite, dev);

	/* scan_its_table returns +1 if all ITEs are invalid */
	if (ret > 0)
		ret = 0;

	return ret;
}