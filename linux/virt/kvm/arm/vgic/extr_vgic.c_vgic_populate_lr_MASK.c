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
struct vgic_irq {int /*<<< orphan*/  irq_lock; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ VGIC_V2 ; 
 TYPE_1__ kvm_vgic_global_state ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,struct vgic_irq*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,struct vgic_irq*,int) ; 

__attribute__((used)) static inline void FUNC3(struct kvm_vcpu *vcpu,
				    struct vgic_irq *irq, int lr)
{
	FUNC0(&irq->irq_lock);

	if (kvm_vgic_global_state.type == VGIC_V2)
		FUNC1(vcpu, irq, lr);
	else
		FUNC2(vcpu, irq, lr);
}