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
struct vgic_cpu {int /*<<< orphan*/  ap_list_head; int /*<<< orphan*/  ap_list_lock; } ;
struct TYPE_2__ {struct vgic_cpu vgic_cpu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vgic_irq_cmp ; 

__attribute__((used)) static void FUNC2(struct kvm_vcpu *vcpu)
{
	struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;

	FUNC1(&vgic_cpu->ap_list_lock);

	FUNC0(NULL, &vgic_cpu->ap_list_head, vgic_irq_cmp);
}