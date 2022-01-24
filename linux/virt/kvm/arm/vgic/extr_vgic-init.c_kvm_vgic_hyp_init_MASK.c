#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gic_kvm_info {int type; scalar_t__ maint_irq; } ;
struct TYPE_2__ {scalar_t__ maint_irq; int /*<<< orphan*/  gicv3_cpuif; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUHP_AP_KVM_ARM_VGIC_INIT_STARTING ; 
 int ENODEV ; 
 int ENXIO ; 
#define  GIC_V2 129 
#define  GIC_V3 128 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct gic_kvm_info* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 TYPE_1__ kvm_vgic_global_state ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vgic_init_cpu_dying ; 
 int /*<<< orphan*/  vgic_init_cpu_starting ; 
 int /*<<< orphan*/  vgic_maintenance_handler ; 
 int FUNC8 (struct gic_kvm_info const*) ; 
 int FUNC9 (struct gic_kvm_info const*) ; 

int FUNC10(void)
{
	const struct gic_kvm_info *gic_kvm_info;
	int ret;

	gic_kvm_info = FUNC2();
	if (!gic_kvm_info)
		return -ENODEV;

	if (!gic_kvm_info->maint_irq) {
		FUNC3("No vgic maintenance irq\n");
		return -ENXIO;
	}

	switch (gic_kvm_info->type) {
	case GIC_V2:
		ret = FUNC8(gic_kvm_info);
		break;
	case GIC_V3:
		ret = FUNC9(gic_kvm_info);
		if (!ret) {
			FUNC7(&kvm_vgic_global_state.gicv3_cpuif);
			FUNC5("GIC system register CPU interface enabled\n");
		}
		break;
	default:
		ret = -ENODEV;
	}

	if (ret)
		return ret;

	kvm_vgic_global_state.maint_irq = gic_kvm_info->maint_irq;
	ret = FUNC6(kvm_vgic_global_state.maint_irq,
				 vgic_maintenance_handler,
				 "vgic", FUNC4());
	if (ret) {
		FUNC3("Cannot register interrupt %d\n",
			kvm_vgic_global_state.maint_irq);
		return ret;
	}

	ret = FUNC0(CPUHP_AP_KVM_ARM_VGIC_INIT_STARTING,
				"kvm/arm/vgic:starting",
				vgic_init_cpu_starting, vgic_init_cpu_dying);
	if (ret) {
		FUNC3("Cannot register vgic CPU notifier\n");
		goto out_free_irq;
	}

	FUNC5("vgic interrupt IRQ%d\n", kvm_vgic_global_state.maint_irq);
	return 0;

out_free_irq:
	FUNC1(kvm_vgic_global_state.maint_irq,
			FUNC4());
	return ret;
}