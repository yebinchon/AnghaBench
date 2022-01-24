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
typedef  int u16 ;
struct kvm_memslots {int dummy; } ;
struct kvm_memory_slot {unsigned long* dirty_bitmap; } ;
struct kvm_dirty_log {int slot; int /*<<< orphan*/  dirty_bitmap; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOENT ; 
 int KVM_ADDRESS_SPACE_NUM ; 
 int KVM_USER_MEM_SLOTS ; 
 struct kvm_memslots* FUNC0 (struct kvm*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned long*,unsigned long) ; 
 struct kvm_memory_slot* FUNC2 (struct kvm_memslots*,int) ; 
 unsigned long FUNC3 (struct kvm_memory_slot*) ; 

int FUNC4(struct kvm *kvm,
			struct kvm_dirty_log *log, int *is_dirty)
{
	struct kvm_memslots *slots;
	struct kvm_memory_slot *memslot;
	int i, as_id, id;
	unsigned long n;
	unsigned long any = 0;

	as_id = log->slot >> 16;
	id = (u16)log->slot;
	if (as_id >= KVM_ADDRESS_SPACE_NUM || id >= KVM_USER_MEM_SLOTS)
		return -EINVAL;

	slots = FUNC0(kvm, as_id);
	memslot = FUNC2(slots, id);
	if (!memslot->dirty_bitmap)
		return -ENOENT;

	n = FUNC3(memslot);

	for (i = 0; !any && i < n/sizeof(long); ++i)
		any = memslot->dirty_bitmap[i];

	if (FUNC1(log->dirty_bitmap, memslot->dirty_bitmap, n))
		return -EFAULT;

	if (any)
		*is_dirty = 1;
	return 0;
}