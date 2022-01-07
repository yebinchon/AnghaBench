
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vgic_io_device {int dev; } ;
struct TYPE_3__ {struct vgic_io_device rd_iodev; } ;
struct TYPE_4__ {TYPE_1__ vgic_cpu; } ;
struct kvm_vcpu {int kvm; TYPE_2__ arch; } ;


 int KVM_MMIO_BUS ;
 int kvm_io_bus_unregister_dev (int ,int ,int *) ;

__attribute__((used)) static void vgic_unregister_redist_iodev(struct kvm_vcpu *vcpu)
{
 struct vgic_io_device *rd_dev = &vcpu->arch.vgic_cpu.rd_iodev;

 kvm_io_bus_unregister_dev(vcpu->kvm, KVM_MMIO_BUS, &rd_dev->dev);
}
