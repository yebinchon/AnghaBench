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
struct vgic_irq {unsigned long mpidr; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  target_vcpu; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
typedef  int gpa_t ;

/* Variables and functions */
 unsigned long FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vgic_irq* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct vgic_irq*) ; 

__attribute__((used)) static void FUNC7(struct kvm_vcpu *vcpu,
				    gpa_t addr, unsigned int len,
				    unsigned long val)
{
	int intid = FUNC1(addr, 64);
	struct vgic_irq *irq;
	unsigned long flags;

	/* The upper word is WI for us since we don't implement Aff3. */
	if (addr & 4)
		return;

	irq = FUNC5(vcpu->kvm, NULL, intid);

	if (!irq)
		return;

	FUNC3(&irq->irq_lock, flags);

	/* We only care about and preserve Aff0, Aff1 and Aff2. */
	irq->mpidr = val & FUNC0(23, 0);
	irq->target_vcpu = FUNC2(vcpu->kvm, irq->mpidr);

	FUNC4(&irq->irq_lock, flags);
	FUNC6(vcpu->kvm, irq);
}