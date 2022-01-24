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
typedef  int /*<<< orphan*/  kvm_pfn_t ;

/* Variables and functions */
 struct page* KVM_ERR_PTR_BAD_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct page *FUNC4(kvm_pfn_t pfn)
{
	if (FUNC1(pfn))
		return KVM_ERR_PTR_BAD_PAGE;

	if (FUNC2(pfn)) {
		FUNC0(1);
		return KVM_ERR_PTR_BAD_PAGE;
	}

	return FUNC3(pfn);
}