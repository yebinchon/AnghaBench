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
struct vgic_redist_region {int free_index; scalar_t__ base; } ;
struct vgic_io_device {int /*<<< orphan*/  dev; struct kvm_vcpu* redist_vcpu; int /*<<< orphan*/  nr_regions; int /*<<< orphan*/  regions; int /*<<< orphan*/  iodev_type; scalar_t__ base_addr; } ;
struct vgic_dist {int /*<<< orphan*/  rd_regions; } ;
struct vgic_cpu {struct vgic_redist_region* rdreg; struct vgic_io_device rd_iodev; } ;
struct TYPE_4__ {struct vgic_cpu vgic_cpu; } ;
struct kvm_vcpu {TYPE_2__ arch; struct kvm* kvm; } ;
struct TYPE_3__ {struct vgic_dist vgic; } ;
struct kvm {int /*<<< orphan*/  slots_lock; TYPE_1__ arch; } ;
typedef  scalar_t__ gpa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  IODEV_REDIST ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  KVM_MMIO_BUS ; 
 int KVM_VGIC_V3_REDIST_SIZE ; 
 int SZ_64K ; 
 int FUNC2 (struct kvm*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kvm_io_gic_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm*) ; 
 int /*<<< orphan*/  vgic_v3_rd_registers ; 
 struct vgic_redist_region* FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct kvm_vcpu *vcpu)
{
	struct kvm *kvm = vcpu->kvm;
	struct vgic_dist *vgic = &kvm->arch.vgic;
	struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;
	struct vgic_io_device *rd_dev = &vcpu->arch.vgic_cpu.rd_iodev;
	struct vgic_redist_region *rdreg;
	gpa_t rd_base;
	int ret;

	if (!FUNC1(vgic_cpu->rd_iodev.base_addr))
		return 0;

	/*
	 * We may be creating VCPUs before having set the base address for the
	 * redistributor region, in which case we will come back to this
	 * function for all VCPUs when the base address is set.  Just return
	 * without doing any work for now.
	 */
	rdreg = FUNC7(&vgic->rd_regions);
	if (!rdreg)
		return 0;

	if (!FUNC6(kvm))
		return -EINVAL;

	vgic_cpu->rdreg = rdreg;

	rd_base = rdreg->base + rdreg->free_index * KVM_VGIC_V3_REDIST_SIZE;

	FUNC3(&rd_dev->dev, &kvm_io_gic_ops);
	rd_dev->base_addr = rd_base;
	rd_dev->iodev_type = IODEV_REDIST;
	rd_dev->regions = vgic_v3_rd_registers;
	rd_dev->nr_regions = FUNC0(vgic_v3_rd_registers);
	rd_dev->redist_vcpu = vcpu;

	FUNC4(&kvm->slots_lock);
	ret = FUNC2(kvm, KVM_MMIO_BUS, rd_base,
				      2 * SZ_64K, &rd_dev->dev);
	FUNC5(&kvm->slots_lock);

	if (ret)
		return ret;

	rdreg->free_index++;
	return 0;
}