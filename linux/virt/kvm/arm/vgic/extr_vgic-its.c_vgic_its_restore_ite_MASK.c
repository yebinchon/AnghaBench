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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct vgic_its {TYPE_1__* dev; } ;
struct vgic_irq {struct vgic_irq* irq; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm {int dummy; } ;
struct its_ite {struct its_ite* irq; } ;
struct its_device {int /*<<< orphan*/  num_eventid_bits; } ;
struct its_collection {int /*<<< orphan*/  target_addr; } ;
struct TYPE_2__ {struct kvm* kvm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct vgic_irq*) ; 
 scalar_t__ KVM_ITS_ITE_ICID_MASK ; 
 scalar_t__ KVM_ITS_ITE_NEXT_SHIFT ; 
 scalar_t__ KVM_ITS_ITE_PINTID_MASK ; 
 scalar_t__ KVM_ITS_ITE_PINTID_SHIFT ; 
 int FUNC2 (struct vgic_irq*) ; 
 scalar_t__ VGIC_MIN_LPI ; 
 struct its_collection* FUNC3 (struct vgic_its*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct its_collection*) ; 
 struct kvm_vcpu* FUNC5 (struct kvm*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 struct vgic_irq* FUNC7 (struct kvm*,scalar_t__,struct kvm_vcpu*) ; 
 struct vgic_irq* FUNC8 (struct its_device*,struct its_collection*,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct vgic_its *its, u32 event_id,
				void *ptr, void *opaque)
{
	struct its_device *dev = (struct its_device *)opaque;
	struct its_collection *collection;
	struct kvm *kvm = its->dev->kvm;
	struct kvm_vcpu *vcpu = NULL;
	u64 val;
	u64 *p = (u64 *)ptr;
	struct vgic_irq *irq;
	u32 coll_id, lpi_id;
	struct its_ite *ite;
	u32 offset;

	val = *p;

	val = FUNC6(val);

	coll_id = val & KVM_ITS_ITE_ICID_MASK;
	lpi_id = (val & KVM_ITS_ITE_PINTID_MASK) >> KVM_ITS_ITE_PINTID_SHIFT;

	if (!lpi_id)
		return 1; /* invalid entry, no choice but to scan next entry */

	if (lpi_id < VGIC_MIN_LPI)
		return -EINVAL;

	offset = val >> KVM_ITS_ITE_NEXT_SHIFT;
	if (event_id + offset >= FUNC0(dev->num_eventid_bits))
		return -EINVAL;

	collection = FUNC3(its, coll_id);
	if (!collection)
		return -EINVAL;

	ite = FUNC8(dev, collection, event_id);
	if (FUNC1(ite))
		return FUNC2(ite);

	if (FUNC4(collection))
		vcpu = FUNC5(kvm, collection->target_addr);

	irq = FUNC7(kvm, lpi_id, vcpu);
	if (FUNC1(irq))
		return FUNC2(irq);
	ite->irq = irq;

	return offset;
}