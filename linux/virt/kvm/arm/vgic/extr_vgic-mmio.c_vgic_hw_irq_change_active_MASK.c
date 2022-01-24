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
struct vgic_irq {int active; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vgic_irq*,int) ; 

__attribute__((used)) static void FUNC1(struct kvm_vcpu *vcpu, struct vgic_irq *irq,
				      bool active, bool is_uaccess)
{
	if (is_uaccess)
		return;

	irq->active = active;
	FUNC0(irq, active);
}