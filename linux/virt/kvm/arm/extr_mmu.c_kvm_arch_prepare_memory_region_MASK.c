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
struct vm_area_struct {scalar_t__ vm_start; int vm_flags; scalar_t__ vm_pgoff; int /*<<< orphan*/  vm_end; } ;
struct kvm_userspace_memory_region {scalar_t__ userspace_addr; scalar_t__ memory_size; int flags; scalar_t__ guest_phys_addr; } ;
struct kvm_memory_slot {int base_gfn; int npages; int flags; } ;
struct kvm {int /*<<< orphan*/  mmu_lock; } ;
typedef  int phys_addr_t ;
typedef  scalar_t__ hva_t ;
typedef  scalar_t__ gpa_t ;
typedef  enum kvm_mr_change { ____Placeholder_kvm_mr_change } kvm_mr_change ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int EPERM ; 
 int KVM_MEM_LOG_DIRTY_PAGES ; 
 int KVM_MEM_READONLY ; 
 int KVM_MR_CREATE ; 
 int KVM_MR_FLAGS_ONLY ; 
 int KVM_MR_MOVE ; 
 int PAGE_SHIFT ; 
 int VM_PFNMAP ; 
 int VM_WRITE ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC1 (TYPE_1__*,scalar_t__) ; 
 int FUNC2 (struct kvm*,scalar_t__,int,scalar_t__,int) ; 
 int FUNC3 (struct kvm*) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm*,struct kvm_memory_slot*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct kvm *kvm,
				   struct kvm_memory_slot *memslot,
				   const struct kvm_userspace_memory_region *mem,
				   enum kvm_mr_change change)
{
	hva_t hva = mem->userspace_addr;
	hva_t reg_end = hva + mem->memory_size;
	bool writable = !(mem->flags & KVM_MEM_READONLY);
	int ret = 0;

	if (change != KVM_MR_CREATE && change != KVM_MR_MOVE &&
			change != KVM_MR_FLAGS_ONLY)
		return 0;

	/*
	 * Prevent userspace from creating a memory region outside of the IPA
	 * space addressable by the KVM guest IPA space.
	 */
	if (memslot->base_gfn + memslot->npages >=
	    (FUNC3(kvm) >> PAGE_SHIFT))
		return -EFAULT;

	FUNC0(&current->mm->mmap_sem);
	/*
	 * A memory region could potentially cover multiple VMAs, and any holes
	 * between them, so iterate over all of them to find out if we can map
	 * any of them right now.
	 *
	 *     +--------------------------------------------+
	 * +---------------+----------------+   +----------------+
	 * |   : VMA 1     |      VMA 2     |   |    VMA 3  :    |
	 * +---------------+----------------+   +----------------+
	 *     |               memory region                |
	 *     +--------------------------------------------+
	 */
	do {
		struct vm_area_struct *vma = FUNC1(current->mm, hva);
		hva_t vm_start, vm_end;

		if (!vma || vma->vm_start >= reg_end)
			break;

		/*
		 * Mapping a read-only VMA is only allowed if the
		 * memory region is configured as read-only.
		 */
		if (writable && !(vma->vm_flags & VM_WRITE)) {
			ret = -EPERM;
			break;
		}

		/*
		 * Take the intersection of this VMA with the memory region
		 */
		vm_start = FUNC4(hva, vma->vm_start);
		vm_end = FUNC5(reg_end, vma->vm_end);

		if (vma->vm_flags & VM_PFNMAP) {
			gpa_t gpa = mem->guest_phys_addr +
				    (vm_start - mem->userspace_addr);
			phys_addr_t pa;

			pa = (phys_addr_t)vma->vm_pgoff << PAGE_SHIFT;
			pa += vm_start - vma->vm_start;

			/* IO region dirty page logging not allowed */
			if (memslot->flags & KVM_MEM_LOG_DIRTY_PAGES) {
				ret = -EINVAL;
				goto out;
			}

			ret = FUNC2(kvm, gpa, pa,
						    vm_end - vm_start,
						    writable);
			if (ret)
				break;
		}
		hva = vm_end;
	} while (hva < reg_end);

	if (change == KVM_MR_FLAGS_ONLY)
		goto out;

	FUNC6(&kvm->mmu_lock);
	if (ret)
		FUNC9(kvm, mem->guest_phys_addr, mem->memory_size);
	else
		FUNC8(kvm, memslot);
	FUNC7(&kvm->mmu_lock);
out:
	FUNC10(&current->mm->mmap_sem);
	return ret;
}