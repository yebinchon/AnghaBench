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
struct its_ite {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int E_ITS_INV_UNMAPPED_INTERRUPT ; 
 struct its_ite* FUNC0 (struct vgic_its*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct kvm *kvm, struct vgic_its *its,
				   u64 *its_cmd)
{
	u32 device_id = FUNC1(its_cmd);
	u32 event_id = FUNC2(its_cmd);
	struct its_ite *ite;


	ite = FUNC0(its, device_id, event_id);
	if (!ite)
		return E_ITS_INV_UNMAPPED_INTERRUPT;

	return FUNC3(kvm, ite->irq, NULL, true);
}