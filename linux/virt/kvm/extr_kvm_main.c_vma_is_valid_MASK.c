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
struct vm_area_struct {int vm_flags; } ;

/* Variables and functions */
 int VM_READ ; 
 int VM_WRITE ; 
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static bool FUNC1(struct vm_area_struct *vma, bool write_fault)
{
	if (FUNC0(!(vma->vm_flags & VM_READ)))
		return false;

	if (write_fault && (FUNC0(!(vma->vm_flags & VM_WRITE))))
		return false;

	return true;
}