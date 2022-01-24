#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct vgic_its {int dummy; } ;
struct vgic_irq {struct vgic_irq* irq; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  propbaser; } ;
struct TYPE_4__ {TYPE_1__ vgic; } ;
struct kvm {TYPE_2__ arch; } ;
struct its_ite {struct its_ite* irq; } ;
struct its_device {int /*<<< orphan*/  num_eventid_bits; } ;
struct its_collection {int /*<<< orphan*/  target_addr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int E_ITS_MAPTI_ID_OOR ; 
 int E_ITS_MAPTI_PHYSICALID_OOR ; 
 int E_ITS_MAPTI_UNMAPPED_DEVICE ; 
 int GIC_LPI_OFFSET ; 
 scalar_t__ GITS_CMD_MAPTI ; 
 scalar_t__ FUNC1 (struct vgic_irq*) ; 
 int FUNC2 (struct vgic_irq*) ; 
 struct its_collection* FUNC3 (struct vgic_its*,int) ; 
 scalar_t__ FUNC4 (struct vgic_its*,int,int) ; 
 struct its_device* FUNC5 (struct vgic_its*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm*,struct vgic_irq*) ; 
 scalar_t__ FUNC12 (struct its_collection*) ; 
 struct kvm_vcpu* FUNC13 (struct kvm*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 struct vgic_irq* FUNC15 (struct kvm*,int,struct kvm_vcpu*) ; 
 int FUNC16 (struct vgic_its*,struct its_collection**,int) ; 
 struct vgic_irq* FUNC17 (struct its_device*,struct its_collection*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct vgic_its*,int) ; 

__attribute__((used)) static int FUNC19(struct kvm *kvm, struct vgic_its *its,
				    u64 *its_cmd)
{
	u32 device_id = FUNC8(its_cmd);
	u32 event_id = FUNC9(its_cmd);
	u32 coll_id = FUNC6(its_cmd);
	struct its_ite *ite;
	struct kvm_vcpu *vcpu = NULL;
	struct its_device *device;
	struct its_collection *collection, *new_coll = NULL;
	struct vgic_irq *irq;
	int lpi_nr;

	device = FUNC5(its, device_id);
	if (!device)
		return E_ITS_MAPTI_UNMAPPED_DEVICE;

	if (event_id >= FUNC0(device->num_eventid_bits))
		return E_ITS_MAPTI_ID_OOR;

	if (FUNC7(its_cmd) == GITS_CMD_MAPTI)
		lpi_nr = FUNC10(its_cmd);
	else
		lpi_nr = event_id;
	if (lpi_nr < GIC_LPI_OFFSET ||
	    lpi_nr >= FUNC14(kvm->arch.vgic.propbaser))
		return E_ITS_MAPTI_PHYSICALID_OOR;

	/* If there is an existing mapping, behavior is UNPREDICTABLE. */
	if (FUNC4(its, device_id, event_id))
		return 0;

	collection = FUNC3(its, coll_id);
	if (!collection) {
		int ret = FUNC16(its, &collection, coll_id);
		if (ret)
			return ret;
		new_coll = collection;
	}

	ite = FUNC17(device, collection, event_id);
	if (FUNC1(ite)) {
		if (new_coll)
			FUNC18(its, coll_id);
		return FUNC2(ite);
	}

	if (FUNC12(collection))
		vcpu = FUNC13(kvm, collection->target_addr);

	irq = FUNC15(kvm, lpi_nr, vcpu);
	if (FUNC1(irq)) {
		if (new_coll)
			FUNC18(its, coll_id);
		FUNC11(kvm, ite);
		return FUNC2(irq);
	}
	ite->irq = irq;

	return 0;
}