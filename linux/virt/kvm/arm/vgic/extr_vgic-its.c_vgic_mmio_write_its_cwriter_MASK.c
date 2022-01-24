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
typedef  scalar_t__ u64 ;
struct vgic_its {int /*<<< orphan*/  cmd_lock; scalar_t__ cwriter; int /*<<< orphan*/  cbaser; } ;
struct kvm {int dummy; } ;
typedef  int gpa_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__,int,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*,struct vgic_its*) ; 

__attribute__((used)) static void FUNC6(struct kvm *kvm, struct vgic_its *its,
					gpa_t addr, unsigned int len,
					unsigned long val)
{
	u64 reg;

	if (!its)
		return;

	FUNC2(&its->cmd_lock);

	reg = FUNC4(its->cwriter, addr & 7, len, val);
	reg = FUNC1(reg);
	if (reg >= FUNC0(its->cbaser)) {
		FUNC3(&its->cmd_lock);
		return;
	}
	its->cwriter = reg;

	FUNC5(kvm, its);

	FUNC3(&its->cmd_lock);
}