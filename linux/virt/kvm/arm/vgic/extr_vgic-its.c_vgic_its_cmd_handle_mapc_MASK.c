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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct vgic_its {int dummy; } ;
struct kvm {int /*<<< orphan*/  online_vcpus; } ;
struct its_collection {scalar_t__ target_addr; } ;

/* Variables and functions */
 int E_ITS_MAPC_PROCNUM_OOR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct its_collection* FUNC1 (struct vgic_its*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*,struct vgic_its*,struct its_collection*) ; 
 int FUNC6 (struct vgic_its*,struct its_collection**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vgic_its*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm*) ; 

__attribute__((used)) static int FUNC9(struct kvm *kvm, struct vgic_its *its,
				    u64 *its_cmd)
{
	u16 coll_id;
	u32 target_addr;
	struct its_collection *collection;
	bool valid;

	valid = FUNC4(its_cmd);
	coll_id = FUNC2(its_cmd);
	target_addr = FUNC3(its_cmd);

	if (target_addr >= FUNC0(&kvm->online_vcpus))
		return E_ITS_MAPC_PROCNUM_OOR;

	if (!valid) {
		FUNC7(its, coll_id);
		FUNC8(kvm);
	} else {
		collection = FUNC1(its, coll_id);

		if (!collection) {
			int ret;

			ret = FUNC6(its, &collection,
							coll_id);
			if (ret)
				return ret;
			collection->target_addr = target_addr;
		} else {
			collection->target_addr = target_addr;
			FUNC5(kvm, its, collection);
		}
	}

	return 0;
}