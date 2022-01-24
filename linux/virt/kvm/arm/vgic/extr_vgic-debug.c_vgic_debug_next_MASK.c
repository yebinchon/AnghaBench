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
typedef  void vgic_state_iter ;
struct seq_file {scalar_t__ private; } ;
struct TYPE_3__ {void* iter; } ;
struct TYPE_4__ {TYPE_1__ vgic; } ;
struct kvm {TYPE_2__ arch; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static void *FUNC2(struct seq_file *s, void *v, loff_t *pos)
{
	struct kvm *kvm = (struct kvm *)s->private;
	struct vgic_state_iter *iter = kvm->arch.vgic.iter;

	++*pos;
	FUNC1(iter);
	if (FUNC0(iter))
		iter = NULL;
	return iter;
}