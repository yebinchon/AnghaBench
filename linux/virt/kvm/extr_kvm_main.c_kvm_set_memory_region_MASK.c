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
struct kvm_userspace_memory_region {int dummy; } ;
struct kvm {int /*<<< orphan*/  slots_lock; } ;

/* Variables and functions */
 int FUNC0 (struct kvm*,struct kvm_userspace_memory_region const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct kvm *kvm,
			  const struct kvm_userspace_memory_region *mem)
{
	int r;

	FUNC1(&kvm->slots_lock);
	r = FUNC0(kvm, mem);
	FUNC2(&kvm->slots_lock);
	return r;
}