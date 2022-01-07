
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_register_region {int (* its_write ) (int ,int ,int ,int,unsigned long) ;int (* write ) (struct kvm_vcpu*,int ,int,unsigned long) ;} ;
struct vgic_io_device {int iodev_type; int its; struct kvm_vcpu* redist_vcpu; } ;
struct kvm_vcpu {int kvm; } ;
struct kvm_io_device {int dummy; } ;
typedef int gpa_t ;






 struct vgic_io_device* kvm_to_vgic_iodev (struct kvm_io_device*) ;
 int stub1 (struct kvm_vcpu*,int ,int,unsigned long) ;
 int stub2 (struct kvm_vcpu*,int ,int,unsigned long) ;
 int stub3 (struct kvm_vcpu*,int ,int,unsigned long) ;
 int stub4 (int ,int ,int ,int,unsigned long) ;
 unsigned long vgic_data_mmio_bus_to_host (void const*,int) ;
 struct vgic_register_region* vgic_get_mmio_region (struct kvm_vcpu*,struct vgic_io_device*,int ,int) ;

__attribute__((used)) static int dispatch_mmio_write(struct kvm_vcpu *vcpu, struct kvm_io_device *dev,
          gpa_t addr, int len, const void *val)
{
 struct vgic_io_device *iodev = kvm_to_vgic_iodev(dev);
 const struct vgic_register_region *region;
 unsigned long data = vgic_data_mmio_bus_to_host(val, len);

 region = vgic_get_mmio_region(vcpu, iodev, addr, len);
 if (!region)
  return 0;

 switch (iodev->iodev_type) {
 case 131:
  region->write(vcpu, addr, len, data);
  break;
 case 130:
  region->write(vcpu, addr, len, data);
  break;
 case 128:
  region->write(iodev->redist_vcpu, addr, len, data);
  break;
 case 129:
  region->its_write(vcpu->kvm, iodev->its, addr, len, data);
  break;
 }

 return 0;
}
