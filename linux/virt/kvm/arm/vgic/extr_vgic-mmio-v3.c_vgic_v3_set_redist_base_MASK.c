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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct kvm*) ; 
 int FUNC1 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct kvm *kvm, u32 index, u64 addr, u32 count)
{
	int ret;

	ret = FUNC1(kvm, index, addr, count);
	if (ret)
		return ret;

	/*
	 * Register iodevs for each existing VCPU.  Adding more VCPUs
	 * afterwards will register the iodevs when needed.
	 */
	ret = FUNC0(kvm);
	if (ret)
		return ret;

	return 0;
}