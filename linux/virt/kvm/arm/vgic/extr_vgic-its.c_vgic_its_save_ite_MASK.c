#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct vgic_its {TYPE_3__* dev; } ;
struct kvm {int dummy; } ;
struct its_ite {TYPE_2__* collection; TYPE_1__* irq; } ;
struct its_device {int /*<<< orphan*/  itt_head; } ;
typedef  int /*<<< orphan*/  gpa_t ;
struct TYPE_6__ {struct kvm* kvm; } ;
struct TYPE_5__ {int collection_id; } ;
struct TYPE_4__ {scalar_t__ intid; } ;

/* Variables and functions */
 int KVM_ITS_ITE_NEXT_SHIFT ; 
 int KVM_ITS_ITE_PINTID_SHIFT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct its_ite*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct kvm*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC3(struct vgic_its *its, struct its_device *dev,
			      struct its_ite *ite, gpa_t gpa, int ite_esz)
{
	struct kvm *kvm = its->dev->kvm;
	u32 next_offset;
	u64 val;

	next_offset = FUNC0(&dev->itt_head, ite);
	val = ((u64)next_offset << KVM_ITS_ITE_NEXT_SHIFT) |
	       ((u64)ite->irq->intid << KVM_ITS_ITE_PINTID_SHIFT) |
		ite->collection->collection_id;
	val = FUNC1(val);
	return FUNC2(kvm, gpa, &val, ite_esz);
}