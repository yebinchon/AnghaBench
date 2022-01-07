
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vgic_io_device {int dev; int base_addr; struct vgic_its* its; int iodev_type; int nr_regions; int regions; } ;
struct vgic_its {int vgic_its_base; struct vgic_io_device iodev; } ;
struct kvm {int slots_lock; } ;


 int ARRAY_SIZE (int ) ;
 int EBUSY ;
 int IODEV_ITS ;
 int IS_VGIC_ADDR_UNDEF (int ) ;
 int KVM_MMIO_BUS ;
 int KVM_VGIC_V3_ITS_SIZE ;
 int its_registers ;
 int kvm_io_bus_register_dev (struct kvm*,int ,int ,int ,int *) ;
 int kvm_io_gic_ops ;
 int kvm_iodevice_init (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int vgic_register_its_iodev(struct kvm *kvm, struct vgic_its *its,
       u64 addr)
{
 struct vgic_io_device *iodev = &its->iodev;
 int ret;

 mutex_lock(&kvm->slots_lock);
 if (!IS_VGIC_ADDR_UNDEF(its->vgic_its_base)) {
  ret = -EBUSY;
  goto out;
 }

 its->vgic_its_base = addr;
 iodev->regions = its_registers;
 iodev->nr_regions = ARRAY_SIZE(its_registers);
 kvm_iodevice_init(&iodev->dev, &kvm_io_gic_ops);

 iodev->base_addr = its->vgic_its_base;
 iodev->iodev_type = IODEV_ITS;
 iodev->its = its;
 ret = kvm_io_bus_register_dev(kvm, KVM_MMIO_BUS, iodev->base_addr,
          KVM_VGIC_V3_ITS_SIZE, &iodev->dev);
out:
 mutex_unlock(&kvm->slots_lock);

 return ret;
}
