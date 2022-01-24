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
typedef  int u32 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int,int /*<<< orphan*/ ) ; 

int FUNC2(struct kvm_vcpu *vcpu, bool is_write,
				    u32 intid, u64 *val)
{
	if (intid % 32)
		return -EINVAL;

	if (is_write)
		FUNC1(vcpu, intid, *val);
	else
		*val = FUNC0(vcpu, intid);

	return 0;
}