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
struct vm_area_struct {int dummy; } ;
struct kvm {int dummy; } ;
typedef  int /*<<< orphan*/  gfn_t ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 unsigned long PAGE_SIZE ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC1 (TYPE_1__*,unsigned long) ; 
 unsigned long FUNC2 (struct kvm*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (struct vm_area_struct*) ; 

unsigned long FUNC6(struct kvm *kvm, gfn_t gfn)
{
	struct vm_area_struct *vma;
	unsigned long addr, size;

	size = PAGE_SIZE;

	addr = FUNC2(kvm, gfn);
	if (FUNC3(addr))
		return PAGE_SIZE;

	FUNC0(&current->mm->mmap_sem);
	vma = FUNC1(current->mm, addr);
	if (!vma)
		goto out;

	size = FUNC5(vma);

out:
	FUNC4(&current->mm->mmap_sem);

	return size;
}