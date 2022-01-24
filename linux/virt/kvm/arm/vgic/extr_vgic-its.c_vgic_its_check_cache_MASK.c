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
typedef  int /*<<< orphan*/  u32 ;
struct vgic_irq {int dummy; } ;
struct vgic_dist {int /*<<< orphan*/  lpi_list_lock; } ;
struct TYPE_2__ {struct vgic_dist vgic; } ;
struct kvm {TYPE_1__ arch; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 struct vgic_irq* FUNC0 (struct vgic_dist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct vgic_irq *FUNC3(struct kvm *kvm, phys_addr_t db,
					     u32 devid, u32 eventid)
{
	struct vgic_dist *dist = &kvm->arch.vgic;
	struct vgic_irq *irq;
	unsigned long flags;

	FUNC1(&dist->lpi_list_lock, flags);
	irq = FUNC0(dist, db, devid, eventid);
	FUNC2(&dist->lpi_list_lock, flags);

	return irq;
}