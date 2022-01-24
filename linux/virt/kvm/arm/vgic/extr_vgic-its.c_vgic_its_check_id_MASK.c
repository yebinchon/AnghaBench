#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct vgic_its {TYPE_1__* dev; } ;
typedef  int phys_addr_t ;
typedef  int /*<<< orphan*/  indirect_ptr ;
typedef  int gpa_t ;
typedef  int gfn_t ;
struct TYPE_5__ {int /*<<< orphan*/  srcu; } ;
struct TYPE_4__ {TYPE_2__* kvm; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int GITS_BASER_INDIRECT ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
#define  GITS_BASER_TYPE_COLLECTION 129 
#define  GITS_BASER_TYPE_DEVICE 128 
 int PAGE_SHIFT ; 
 int SZ_64K ; 
 int VITS_TYPER_DEVBITS ; 
 int FUNC6 (TYPE_2__*,int) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int,int*,int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC11(struct vgic_its *its, u64 baser, u32 id,
			      gpa_t *eaddr)
{
	int l1_tbl_size = FUNC4(baser) * SZ_64K;
	u64 indirect_ptr, type = FUNC5(baser);
	phys_addr_t base = FUNC2(baser);
	int esz = FUNC3(baser);
	int index, idx;
	gfn_t gfn;
	bool ret;

	switch (type) {
	case GITS_BASER_TYPE_DEVICE:
		if (id >= FUNC0(VITS_TYPER_DEVBITS))
			return false;
		break;
	case GITS_BASER_TYPE_COLLECTION:
		/* as GITS_TYPER.CIL == 0, ITS supports 16-bit collection ID */
		if (id >= FUNC0(16))
			return false;
		break;
	default:
		return false;
	}

	if (!(baser & GITS_BASER_INDIRECT)) {
		phys_addr_t addr;

		if (id >= (l1_tbl_size / esz))
			return false;

		addr = base + id * esz;
		gfn = addr >> PAGE_SHIFT;

		if (eaddr)
			*eaddr = addr;

		goto out;
	}

	/* calculate and check the index into the 1st level */
	index = id / (SZ_64K / esz);
	if (index >= (l1_tbl_size / sizeof(u64)))
		return false;

	/* Each 1st level entry is represented by a 64-bit value. */
	if (FUNC7(its->dev->kvm,
			   base + index * sizeof(indirect_ptr),
			   &indirect_ptr, sizeof(indirect_ptr)))
		return false;

	indirect_ptr = FUNC8(indirect_ptr);

	/* check the valid bit of the first level entry */
	if (!(indirect_ptr & FUNC0(63)))
		return false;

	/* Mask the guest physical address and calculate the frame number. */
	indirect_ptr &= FUNC1(51, 16);

	/* Find the address of the actual entry */
	index = id % (SZ_64K / esz);
	indirect_ptr += index * esz;
	gfn = indirect_ptr >> PAGE_SHIFT;

	if (eaddr)
		*eaddr = indirect_ptr;

out:
	idx = FUNC9(&its->dev->kvm->srcu);
	ret = FUNC6(its->dev->kvm, gfn);
	FUNC10(&its->dev->kvm->srcu, idx);
	return ret;
}