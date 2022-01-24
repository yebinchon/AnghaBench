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
typedef  scalar_t__ u32 ;
struct vgic_irq {scalar_t__ targets; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
typedef  int /*<<< orphan*/  gpa_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct vgic_irq* FUNC1 (int /*<<< orphan*/ ,struct kvm_vcpu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vgic_irq*) ; 

__attribute__((used)) static unsigned long FUNC3(struct kvm_vcpu *vcpu,
					   gpa_t addr, unsigned int len)
{
	u32 intid = FUNC0(addr, 8);
	int i;
	u64 val = 0;

	for (i = 0; i < len; i++) {
		struct vgic_irq *irq = FUNC1(vcpu->kvm, vcpu, intid + i);

		val |= (u64)irq->targets << (i * 8);

		FUNC2(vcpu->kvm, irq);
	}

	return val;
}