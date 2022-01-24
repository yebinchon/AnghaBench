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
typedef  int u64 ;
struct vgic_its_abi {int dte_esz; int cte_esz; } ;
struct vgic_its {int baser_device_table; int baser_coll_table; int /*<<< orphan*/  its_lock; scalar_t__ enabled; } ;
struct kvm {int dummy; } ;
typedef  int gpa_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int GITS_BASER_ENTRY_SIZE_SHIFT ; 
 int GITS_BASER_INDIRECT ; 
 int GITS_BASER_RO_MASK ; 
#define  GITS_BASER_TYPE_COLLECTION 129 
#define  GITS_BASER_TYPE_DEVICE 128 
 int GITS_BASER_TYPE_SHIFT ; 
 int GITS_BASER_VALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*,struct vgic_its*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*,struct vgic_its*) ; 
 struct vgic_its_abi* FUNC6 (struct vgic_its*) ; 
 int FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct kvm *kvm,
				      struct vgic_its *its,
				      gpa_t addr, unsigned int len,
				      unsigned long val)
{
	const struct vgic_its_abi *abi = FUNC6(its);
	u64 entry_size, table_type;
	u64 reg, *regptr, clearbits = 0;

	/* When GITS_CTLR.Enable is 1, we ignore write accesses. */
	if (its->enabled)
		return;

	switch (FUNC0(addr)) {
	case 0:
		regptr = &its->baser_device_table;
		entry_size = abi->dte_esz;
		table_type = GITS_BASER_TYPE_DEVICE;
		break;
	case 1:
		regptr = &its->baser_coll_table;
		entry_size = abi->cte_esz;
		table_type = GITS_BASER_TYPE_COLLECTION;
		clearbits = GITS_BASER_INDIRECT;
		break;
	default:
		return;
	}

	reg = FUNC3(*regptr, addr & 7, len, val);
	reg &= ~GITS_BASER_RO_MASK;
	reg &= ~clearbits;

	reg |= (entry_size - 1) << GITS_BASER_ENTRY_SIZE_SHIFT;
	reg |= table_type << GITS_BASER_TYPE_SHIFT;
	reg = FUNC7(reg);

	*regptr = reg;

	if (!(reg & GITS_BASER_VALID)) {
		/* Take the its_lock to prevent a race with a save/restore */
		FUNC1(&its->its_lock);
		switch (table_type) {
		case GITS_BASER_TYPE_DEVICE:
			FUNC5(kvm, its);
			break;
		case GITS_BASER_TYPE_COLLECTION:
			FUNC4(kvm, its);
			break;
		}
		FUNC2(&its->its_lock);
	}
}