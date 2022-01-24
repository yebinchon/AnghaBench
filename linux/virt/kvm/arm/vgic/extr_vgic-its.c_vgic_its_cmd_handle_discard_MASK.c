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
typedef  int /*<<< orphan*/  u32 ;
struct vgic_its {int dummy; } ;
struct kvm {int dummy; } ;
struct its_ite {scalar_t__ collection; } ;

/* Variables and functions */
 int E_ITS_DISCARD_UNMAPPED_INTERRUPT ; 
 struct its_ite* FUNC0 (struct vgic_its*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*,struct its_ite*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*) ; 

__attribute__((used)) static int FUNC5(struct kvm *kvm, struct vgic_its *its,
				       u64 *its_cmd)
{
	u32 device_id = FUNC1(its_cmd);
	u32 event_id = FUNC2(its_cmd);
	struct its_ite *ite;


	ite = FUNC0(its, device_id, event_id);
	if (ite && ite->collection) {
		/*
		 * Though the spec talks about removing the pending state, we
		 * don't bother here since we clear the ITTE anyway and the
		 * pending state is a property of the ITTE struct.
		 */
		FUNC4(kvm);

		FUNC3(kvm, ite);
		return 0;
	}

	return E_ITS_DISCARD_UNMAPPED_INTERRUPT;
}