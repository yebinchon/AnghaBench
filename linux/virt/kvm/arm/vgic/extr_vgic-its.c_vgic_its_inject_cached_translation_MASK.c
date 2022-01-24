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
struct vgic_irq {int pending_latch; int /*<<< orphan*/  irq_lock; } ;
struct kvm_msi {int address_lo; int /*<<< orphan*/  data; int /*<<< orphan*/  devid; scalar_t__ address_hi; } ;
struct kvm {int dummy; } ;
typedef  int phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vgic_irq* FUNC1 (struct kvm*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,struct vgic_irq*,unsigned long) ; 

int FUNC3(struct kvm *kvm, struct kvm_msi *msi)
{
	struct vgic_irq *irq;
	unsigned long flags;
	phys_addr_t db;

	db = (u64)msi->address_hi << 32 | msi->address_lo;
	irq = FUNC1(kvm, db, msi->devid, msi->data);

	if (!irq)
		return -1;

	FUNC0(&irq->irq_lock, flags);
	irq->pending_latch = true;
	FUNC2(kvm, irq, flags);

	return 0;
}