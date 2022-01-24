#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {scalar_t__ vm_start; int vm_flags; int /*<<< orphan*/  vm_end; } ;
struct kvm_memory_slot {scalar_t__ userspace_addr; scalar_t__ base_gfn; scalar_t__ npages; } ;
struct kvm {int dummy; } ;
typedef  scalar_t__ phys_addr_t ;
typedef  scalar_t__ hva_t ;
typedef  scalar_t__ gpa_t ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 scalar_t__ PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int VM_PFNMAP ; 
 TYPE_1__* current ; 
 struct vm_area_struct* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct kvm *kvm,
				 struct kvm_memory_slot *memslot)
{
	hva_t hva = memslot->userspace_addr;
	phys_addr_t addr = memslot->base_gfn << PAGE_SHIFT;
	phys_addr_t size = PAGE_SIZE * memslot->npages;
	hva_t reg_end = hva + size;

	/*
	 * A memory region could potentially cover multiple VMAs, and any holes
	 * between them, so iterate over all of them to find out if we should
	 * unmap any of them.
	 *
	 *     +--------------------------------------------+
	 * +---------------+----------------+   +----------------+
	 * |   : VMA 1     |      VMA 2     |   |    VMA 3  :    |
	 * +---------------+----------------+   +----------------+
	 *     |               memory region                |
	 *     +--------------------------------------------+
	 */
	do {
		struct vm_area_struct *vma = FUNC0(current->mm, hva);
		hva_t vm_start, vm_end;

		if (!vma || vma->vm_start >= reg_end)
			break;

		/*
		 * Take the intersection of this VMA with the memory region
		 */
		vm_start = FUNC1(hva, vma->vm_start);
		vm_end = FUNC2(reg_end, vma->vm_end);

		if (!(vma->vm_flags & VM_PFNMAP)) {
			gpa_t gpa = addr + (vm_start - memslot->userspace_addr);
			FUNC3(kvm, gpa, vm_end - vm_start);
		}
		hva = vm_end;
	} while (hva < reg_end);
}