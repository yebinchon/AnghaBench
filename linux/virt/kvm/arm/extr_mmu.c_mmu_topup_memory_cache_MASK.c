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
struct kvm_mmu_memory_cache {int nobjs; void** objects; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_PGTABLE_USER ; 
 int KVM_NR_MEM_OBJS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct kvm_mmu_memory_cache *cache,
				  int min, int max)
{
	void *page;

	FUNC0(max > KVM_NR_MEM_OBJS);
	if (cache->nobjs >= min)
		return 0;
	while (cache->nobjs < max) {
		page = (void *)FUNC1(GFP_PGTABLE_USER);
		if (!page)
			return -ENOMEM;
		cache->objects[cache->nobjs++] = page;
	}
	return 0;
}