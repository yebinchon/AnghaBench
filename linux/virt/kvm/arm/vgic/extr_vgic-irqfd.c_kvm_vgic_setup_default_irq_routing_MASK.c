#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct vgic_dist {int nr_spis; } ;
struct TYPE_4__ {int pin; scalar_t__ irqchip; } ;
struct TYPE_5__ {TYPE_1__ irqchip; } ;
struct kvm_irq_routing_entry {int gsi; TYPE_2__ u; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {struct vgic_dist vgic; } ;
struct kvm {TYPE_3__ arch; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KVM_IRQ_ROUTING_IRQCHIP ; 
 struct kvm_irq_routing_entry* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_irq_routing_entry*) ; 
 int FUNC2 (struct kvm*,struct kvm_irq_routing_entry*,int,int /*<<< orphan*/ ) ; 

int FUNC3(struct kvm *kvm)
{
	struct kvm_irq_routing_entry *entries;
	struct vgic_dist *dist = &kvm->arch.vgic;
	u32 nr = dist->nr_spis;
	int i, ret;

	entries = FUNC0(nr, sizeof(*entries), GFP_KERNEL);
	if (!entries)
		return -ENOMEM;

	for (i = 0; i < nr; i++) {
		entries[i].gsi = i;
		entries[i].type = KVM_IRQ_ROUTING_IRQCHIP;
		entries[i].u.irqchip.irqchip = 0;
		entries[i].u.irqchip.pin = i;
	}
	ret = FUNC2(kvm, entries, nr, 0);
	FUNC1(entries);
	return ret;
}