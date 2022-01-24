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
struct kvm_vcpu {int dummy; } ;
struct kvm {int dummy; } ;
struct its_ite {int /*<<< orphan*/  irq; struct its_collection* collection; } ;
struct its_collection {int /*<<< orphan*/  target_addr; } ;

/* Variables and functions */
 int E_ITS_MOVI_UNMAPPED_COLLECTION ; 
 int E_ITS_MOVI_UNMAPPED_INTERRUPT ; 
 struct its_collection* FUNC0 (struct vgic_its*,int /*<<< orphan*/ ) ; 
 struct its_ite* FUNC1 (struct vgic_its*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct its_collection*) ; 
 struct kvm_vcpu* FUNC6 (struct kvm*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm*) ; 

__attribute__((used)) static int FUNC9(struct kvm *kvm, struct vgic_its *its,
				    u64 *its_cmd)
{
	u32 device_id = FUNC3(its_cmd);
	u32 event_id = FUNC4(its_cmd);
	u32 coll_id = FUNC2(its_cmd);
	struct kvm_vcpu *vcpu;
	struct its_ite *ite;
	struct its_collection *collection;

	ite = FUNC1(its, device_id, event_id);
	if (!ite)
		return E_ITS_MOVI_UNMAPPED_INTERRUPT;

	if (!FUNC5(ite->collection))
		return E_ITS_MOVI_UNMAPPED_COLLECTION;

	collection = FUNC0(its, coll_id);
	if (!FUNC5(collection))
		return E_ITS_MOVI_UNMAPPED_COLLECTION;

	ite->collection = collection;
	vcpu = FUNC6(kvm, collection->target_addr);

	FUNC8(kvm);

	return FUNC7(ite->irq, vcpu);
}