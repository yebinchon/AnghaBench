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
struct vgic_irq {int /*<<< orphan*/  mpidr; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
typedef  int gpa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,int,unsigned int) ; 
 struct vgic_irq* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct vgic_irq*) ; 

__attribute__((used)) static unsigned long FUNC5(struct kvm_vcpu *vcpu,
					    gpa_t addr, unsigned int len)
{
	int intid = FUNC1(addr, 64);
	struct vgic_irq *irq = FUNC3(vcpu->kvm, NULL, intid);
	unsigned long ret = 0;

	if (!irq)
		return 0;

	/* The upper word is RAZ for us. */
	if (!(addr & 4))
		ret = FUNC2(FUNC0(irq->mpidr), addr & 7, len);

	FUNC4(vcpu->kvm, irq);
	return ret;
}