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
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  start; } ;
struct gic_kvm_info {TYPE_1__ vctrl; TYPE_1__ vcpu; } ;
struct TYPE_4__ {int nr_lr; int can_emulate_gicv2; scalar_t__ vcpu_base_va; scalar_t__ vctrl_base; int /*<<< orphan*/  max_gic_vcpus; int /*<<< orphan*/  type; int /*<<< orphan*/  vcpu_base; int /*<<< orphan*/  vctrl_hyp; int /*<<< orphan*/  vcpu_hyp_va; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ GICH_VTR ; 
 int /*<<< orphan*/  KVM_DEV_TYPE_ARM_VGIC_V2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VGIC_V2 ; 
 int /*<<< orphan*/  VGIC_V2_MAX_CPUS ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__ kvm_vgic_global_state ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vgic_v2_cpuif_trap ; 

int FUNC10(const struct gic_kvm_info *info)
{
	int ret;
	u32 vtr;

	if (!info->vctrl.start) {
		FUNC4("GICH not present in the firmware table\n");
		return -ENXIO;
	}

	if (!FUNC0(info->vcpu.start) ||
	    !FUNC0(FUNC8(&info->vcpu))) {
		FUNC5("GICV region size/alignment is unsafe, using trapping (reduced performance)\n");

		ret = FUNC1(info->vcpu.start,
					     FUNC8(&info->vcpu),
					     &kvm_vgic_global_state.vcpu_base_va,
					     &kvm_vgic_global_state.vcpu_hyp_va);
		if (ret) {
			FUNC4("Cannot map GICV into hyp\n");
			goto out;
		}

		FUNC9(&vgic_v2_cpuif_trap);
	}

	ret = FUNC1(info->vctrl.start,
				     FUNC8(&info->vctrl),
				     &kvm_vgic_global_state.vctrl_base,
				     &kvm_vgic_global_state.vctrl_hyp);
	if (ret) {
		FUNC4("Cannot map VCTRL into hyp\n");
		goto out;
	}

	vtr = FUNC7(kvm_vgic_global_state.vctrl_base + GICH_VTR);
	kvm_vgic_global_state.nr_lr = (vtr & 0x3f) + 1;

	ret = FUNC6(KVM_DEV_TYPE_ARM_VGIC_V2);
	if (ret) {
		FUNC4("Cannot register GICv2 KVM device\n");
		goto out;
	}

	kvm_vgic_global_state.can_emulate_gicv2 = true;
	kvm_vgic_global_state.vcpu_base = info->vcpu.start;
	kvm_vgic_global_state.type = VGIC_V2;
	kvm_vgic_global_state.max_gic_vcpus = VGIC_V2_MAX_CPUS;

	FUNC3("vgic-v2@%llx\n", info->vctrl.start);

	return 0;
out:
	if (kvm_vgic_global_state.vctrl_base)
		FUNC2(kvm_vgic_global_state.vctrl_base);
	if (kvm_vgic_global_state.vcpu_base_va)
		FUNC2(kvm_vgic_global_state.vcpu_base_va);

	return ret;
}