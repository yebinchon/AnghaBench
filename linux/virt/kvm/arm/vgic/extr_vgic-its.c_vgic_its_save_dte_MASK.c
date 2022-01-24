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
typedef  unsigned long long u64 ;
typedef  scalar_t__ u32 ;
struct vgic_its {int /*<<< orphan*/  device_list; TYPE_1__* dev; } ;
struct kvm {int dummy; } ;
struct its_device {int itt_addr; int num_eventid_bits; } ;
typedef  int /*<<< orphan*/  gpa_t ;
struct TYPE_2__ {struct kvm* kvm; } ;

/* Variables and functions */
 unsigned long long KVM_ITS_DTE_ITTADDR_SHIFT ; 
 unsigned long long KVM_ITS_DTE_NEXT_SHIFT ; 
 unsigned long long KVM_ITS_DTE_VALID_SHIFT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct its_device*) ; 
 unsigned long long FUNC1 (unsigned long long) ; 
 int FUNC2 (struct kvm*,int /*<<< orphan*/ ,unsigned long long*,int) ; 

__attribute__((used)) static int FUNC3(struct vgic_its *its, struct its_device *dev,
			     gpa_t ptr, int dte_esz)
{
	struct kvm *kvm = its->dev->kvm;
	u64 val, itt_addr_field;
	u32 next_offset;

	itt_addr_field = dev->itt_addr >> 8;
	next_offset = FUNC0(&its->device_list, dev);
	val = (1ULL << KVM_ITS_DTE_VALID_SHIFT |
	       ((u64)next_offset << KVM_ITS_DTE_NEXT_SHIFT) |
	       (itt_addr_field << KVM_ITS_DTE_ITTADDR_SHIFT) |
		(dev->num_eventid_bits - 1));
	val = FUNC1(val);
	return FUNC2(kvm, ptr, &val, dte_esz);
}