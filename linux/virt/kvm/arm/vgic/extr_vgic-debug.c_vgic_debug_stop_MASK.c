#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vgic_state_iter {struct vgic_state_iter* lpi_array; } ;
struct seq_file {scalar_t__ private; } ;
struct TYPE_3__ {struct vgic_state_iter* iter; } ;
struct TYPE_4__ {TYPE_1__ vgic; } ;
struct kvm {int /*<<< orphan*/  lock; TYPE_2__ arch; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct vgic_state_iter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct seq_file *s, void *v)
{
	struct kvm *kvm = (struct kvm *)s->private;
	struct vgic_state_iter *iter;

	/*
	 * If the seq file wasn't properly opened, there's nothing to clearn
	 * up.
	 */
	if (FUNC0(v))
		return;

	FUNC2(&kvm->lock);
	iter = kvm->arch.vgic.iter;
	FUNC1(iter->lpi_array);
	FUNC1(iter);
	kvm->arch.vgic.iter = NULL;
	FUNC3(&kvm->lock);
}