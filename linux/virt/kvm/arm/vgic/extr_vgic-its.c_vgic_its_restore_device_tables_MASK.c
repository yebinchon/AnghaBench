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
struct vgic_its_abi {int dte_esz; } ;
struct vgic_its {int baser_device_table; } ;
typedef  int /*<<< orphan*/  gpa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GITS_BASER_INDIRECT ; 
 int FUNC1 (int) ; 
 int GITS_BASER_VALID ; 
 int GITS_LVL1_ENTRY_SIZE ; 
 int SZ_64K ; 
 int /*<<< orphan*/  handle_l1_dte ; 
 int FUNC2 (struct vgic_its*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct vgic_its_abi* FUNC3 (struct vgic_its*) ; 
 int /*<<< orphan*/  vgic_its_restore_dte ; 

__attribute__((used)) static int FUNC4(struct vgic_its *its)
{
	const struct vgic_its_abi *abi = FUNC3(its);
	u64 baser = its->baser_device_table;
	int l1_esz, ret;
	int l1_tbl_size = FUNC1(baser) * SZ_64K;
	gpa_t l1_gpa;

	if (!(baser & GITS_BASER_VALID))
		return 0;

	l1_gpa = FUNC0(baser);

	if (baser & GITS_BASER_INDIRECT) {
		l1_esz = GITS_LVL1_ENTRY_SIZE;
		ret = FUNC2(its, l1_gpa, l1_tbl_size, l1_esz, 0,
				     handle_l1_dte, NULL);
	} else {
		l1_esz = abi->dte_esz;
		ret = FUNC2(its, l1_gpa, l1_tbl_size, l1_esz, 0,
				     vgic_its_restore_dte, NULL);
	}

	/* scan_its_table returns +1 if all entries are invalid */
	if (ret > 0)
		ret = 0;

	return ret;
}