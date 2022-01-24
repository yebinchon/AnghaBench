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
struct page {int dummy; } ;
struct kvm {int /*<<< orphan*/  coalesced_zones; int /*<<< orphan*/  ring_lock; int /*<<< orphan*/  coalesced_mmio_ring; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int __GFP_ZERO ; 
 struct page* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct kvm *kvm)
{
	struct page *page;
	int ret;

	ret = -ENOMEM;
	page = FUNC1(GFP_KERNEL | __GFP_ZERO);
	if (!page)
		goto out_err;

	ret = 0;
	kvm->coalesced_mmio_ring = FUNC2(page);

	/*
	 * We're using this spinlock to sync access to the coalesced ring.
	 * The list doesn't need it's own lock since device registration and
	 * unregistration should only happen when kvm->slots_lock is held.
	 */
	FUNC3(&kvm->ring_lock);
	FUNC0(&kvm->coalesced_zones);

out_err:
	return ret;
}