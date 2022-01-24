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
struct vgic_dist {int ready; int /*<<< orphan*/  vgic_cpu_base; int /*<<< orphan*/  vgic_dist_base; } ;
struct TYPE_3__ {struct vgic_dist vgic; } ;
struct kvm {TYPE_1__ arch; } ;
struct TYPE_4__ {int /*<<< orphan*/  vcpu_base; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KVM_VGIC_V2_CPU_SIZE ; 
 int /*<<< orphan*/  VGIC_V2 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ kvm_vgic_global_state ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct kvm*) ; 
 scalar_t__ FUNC5 (struct kvm*) ; 
 int FUNC6 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vgic_v2_cpuif_trap ; 

int FUNC8(struct kvm *kvm)
{
	struct vgic_dist *dist = &kvm->arch.vgic;
	int ret = 0;

	if (FUNC5(kvm))
		goto out;

	if (FUNC0(dist->vgic_dist_base) ||
	    FUNC0(dist->vgic_cpu_base)) {
		FUNC1("Need to set vgic cpu and dist addresses first\n");
		ret = -ENXIO;
		goto out;
	}

	if (!FUNC7(dist->vgic_dist_base, dist->vgic_cpu_base)) {
		FUNC1("VGIC CPU and dist frames overlap\n");
		ret = -EINVAL;
		goto out;
	}

	/*
	 * Initialize the vgic if this hasn't already been done on demand by
	 * accessing the vgic state from userspace.
	 */
	ret = FUNC4(kvm);
	if (ret) {
		FUNC1("Unable to initialize VGIC dynamic data structures\n");
		goto out;
	}

	ret = FUNC6(kvm, dist->vgic_dist_base, VGIC_V2);
	if (ret) {
		FUNC1("Unable to register VGIC MMIO regions\n");
		goto out;
	}

	if (!FUNC3(&vgic_v2_cpuif_trap)) {
		ret = FUNC2(kvm, dist->vgic_cpu_base,
					    kvm_vgic_global_state.vcpu_base,
					    KVM_VGIC_V2_CPU_SIZE, true);
		if (ret) {
			FUNC1("Unable to remap VGIC CPU to VCPU\n");
			goto out;
		}
	}

	dist->ready = true;

out:
	return ret;
}