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
struct kvm_ioeventfd {int /*<<< orphan*/  len; int /*<<< orphan*/  flags; } ;
struct kvm {int dummy; } ;
typedef  enum kvm_bus { ____Placeholder_kvm_bus } kvm_bus ;

/* Variables and functions */
 int KVM_FAST_MMIO_BUS ; 
 int KVM_MMIO_BUS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kvm*,int,struct kvm_ioeventfd*) ; 

__attribute__((used)) static int FUNC2(struct kvm *kvm, struct kvm_ioeventfd *args)
{
	enum kvm_bus bus_idx = FUNC0(args->flags);
	int ret = FUNC1(kvm, bus_idx, args);

	if (!args->len && bus_idx == KVM_MMIO_BUS)
		FUNC1(kvm, KVM_FAST_MMIO_BUS, args);

	return ret;
}