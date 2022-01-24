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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct vgic_its {int dummy; } ;
struct kvm {int dummy; } ;
struct its_ite {TYPE_1__* irq; } ;
struct TYPE_2__ {int pending_latch; int /*<<< orphan*/  host_irq; scalar_t__ hw; } ;

/* Variables and functions */
 int E_ITS_CLEAR_UNMAPPED_INTERRUPT ; 
 int /*<<< orphan*/  IRQCHIP_STATE_PENDING ; 
 struct its_ite* FUNC0 (struct vgic_its*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct kvm *kvm, struct vgic_its *its,
				     u64 *its_cmd)
{
	u32 device_id = FUNC2(its_cmd);
	u32 event_id = FUNC3(its_cmd);
	struct its_ite *ite;


	ite = FUNC0(its, device_id, event_id);
	if (!ite)
		return E_ITS_CLEAR_UNMAPPED_INTERRUPT;

	ite->irq->pending_latch = false;

	if (ite->irq->hw)
		return FUNC1(ite->irq->host_irq,
					     IRQCHIP_STATE_PENDING, false);

	return 0;
}