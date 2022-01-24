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
struct kvm_mmu_memory_cache {int /*<<< orphan*/  member_0; } ;
struct kvm {int /*<<< orphan*/  mmu_lock; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  unsigned long phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_NR_MEM_OBJS ; 
 int /*<<< orphan*/  KVM_S2PTE_FLAG_IS_IOMAP ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  PAGE_S2_DEVICE ; 
 unsigned long PAGE_SIZE ; 
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_mmu_memory_cache*) ; 
 int FUNC5 (struct kvm_mmu_memory_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct kvm*,struct kvm_mmu_memory_cache*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC9(struct kvm *kvm, phys_addr_t guest_ipa,
			  phys_addr_t pa, unsigned long size, bool writable)
{
	phys_addr_t addr, end;
	int ret = 0;
	unsigned long pfn;
	struct kvm_mmu_memory_cache cache = { 0, };

	end = (guest_ipa + size + PAGE_SIZE - 1) & PAGE_MASK;
	pfn = FUNC0(pa);

	for (addr = guest_ipa; addr < end; addr += PAGE_SIZE) {
		pte_t pte = FUNC2(pfn, PAGE_S2_DEVICE);

		if (writable)
			pte = FUNC3(pte);

		ret = FUNC5(&cache,
					     FUNC1(kvm),
					     KVM_NR_MEM_OBJS);
		if (ret)
			goto out;
		FUNC6(&kvm->mmu_lock);
		ret = FUNC8(kvm, &cache, addr, &pte,
						KVM_S2PTE_FLAG_IS_IOMAP);
		FUNC7(&kvm->mmu_lock);
		if (ret)
			goto out;

		pfn++;
	}

out:
	FUNC4(&cache);
	return ret;
}