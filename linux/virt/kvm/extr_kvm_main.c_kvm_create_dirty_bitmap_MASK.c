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
struct kvm_memory_slot {int /*<<< orphan*/  dirty_bitmap; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL_ACCOUNT ; 
 int FUNC0 (struct kvm_memory_slot*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct kvm_memory_slot *memslot)
{
	unsigned long dirty_bytes = 2 * FUNC0(memslot);

	memslot->dirty_bitmap = FUNC1(dirty_bytes, GFP_KERNEL_ACCOUNT);
	if (!memslot->dirty_bitmap)
		return -ENOMEM;

	return 0;
}