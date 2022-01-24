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
struct vm_area_struct {int vm_flags; } ;
typedef  int /*<<< orphan*/  kvm_pfn_t ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EHWPOISON ; 
 int /*<<< orphan*/  KVM_PFN_ERR_FAULT ; 
 int /*<<< orphan*/  KVM_PFN_ERR_HWPOISON ; 
 int VM_IO ; 
 int VM_PFNMAP ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC3 (TYPE_1__*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long,int,int*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct vm_area_struct*,unsigned long,int*,int,int*,int /*<<< orphan*/ *) ; 
 int FUNC6 (unsigned long,int*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct vm_area_struct*,int) ; 

__attribute__((used)) static kvm_pfn_t FUNC9(unsigned long addr, bool atomic, bool *async,
			bool write_fault, bool *writable)
{
	struct vm_area_struct *vma;
	kvm_pfn_t pfn = 0;
	int npages, r;

	/* we can do it either atomically or asynchronously, not both */
	FUNC0(atomic && async);

	if (FUNC4(addr, write_fault, writable, &pfn))
		return pfn;

	if (atomic)
		return KVM_PFN_ERR_FAULT;

	npages = FUNC6(addr, async, write_fault, writable, &pfn);
	if (npages == 1)
		return pfn;

	FUNC2(&current->mm->mmap_sem);
	if (npages == -EHWPOISON ||
	      (!async && FUNC1(addr))) {
		pfn = KVM_PFN_ERR_HWPOISON;
		goto exit;
	}

retry:
	vma = FUNC3(current->mm, addr, addr + 1);

	if (vma == NULL)
		pfn = KVM_PFN_ERR_FAULT;
	else if (vma->vm_flags & (VM_IO | VM_PFNMAP)) {
		r = FUNC5(vma, addr, async, write_fault, writable, &pfn);
		if (r == -EAGAIN)
			goto retry;
		if (r < 0)
			pfn = KVM_PFN_ERR_FAULT;
	} else {
		if (async && FUNC8(vma, write_fault))
			*async = true;
		pfn = KVM_PFN_ERR_FAULT;
	}
exit:
	FUNC7(&current->mm->mmap_sem);
	return pfn;
}