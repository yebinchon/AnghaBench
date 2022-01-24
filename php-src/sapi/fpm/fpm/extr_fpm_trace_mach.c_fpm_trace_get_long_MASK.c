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
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ addr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 uintptr_t fpm_pagesize ; 
 scalar_t__ local_page ; 
 scalar_t__ target_page_base ; 

int FUNC2(long addr, long *data) /* {{{ */
{
	size_t offset = ((uintptr_t) (addr) % fpm_pagesize);
	vm_offset_t base = (uintptr_t) (addr) - offset;

	if (base != target_page_base) {
		FUNC0();
		if (0 > FUNC1(base)) {
			return -1;
		}
	}
	*data = * (long *) (local_page + offset);
	return 0;
}