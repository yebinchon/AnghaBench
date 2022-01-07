
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_register_region {unsigned long (* read ) (struct kvm_vcpu*,int ,int) ;unsigned long (* its_read ) (int ,int ,int ,int) ;} ;
struct vgic_io_device {int iodev_type; int its; struct kvm_vcpu* redist_vcpu; } ;
struct kvm_vcpu {int kvm; } ;
struct kvm_io_device {int dummy; } ;
typedef int gpa_t ;






 struct vgic_io_device* kvm_to_vgic_iodev (struct kvm_io_device*) ;
 int memset (void*,int ,int) ;
 unsigned long stub1 (struct kvm_vcpu*,int ,int) ;
 unsigned long stub2 (struct kvm_vcpu*,int ,int) ;
 unsigned long stub3 (struct kvm_vcpu*,int ,int) ;
 unsigned long stub4 (int ,int ,int ,int) ;
 int vgic_data_host_to_mmio_bus (void*,int,unsigned long) ;
 struct vgic_register_region* vgic_get_mmio_region (struct kvm_vcpu*,struct vgic_io_device*,int ,int) ;

__attribute__((used)) static int dispatch_mmio_read(struct kvm_vcpu *vcpu, struct kvm_io_device *dev,
         gpa_t addr, int len, void *val)
{
 struct vgic_io_device *iodev = kvm_to_vgic_iodev(dev);
 const struct vgic_register_region *region;
 unsigned long data = 0;

 region = vgic_get_mmio_region(vcpu, iodev, addr, len);
 if (!region) {
  memset(val, 0, len);
  return 0;
 }

 switch (iodev->iodev_type) {
 case 131:
  data = region->read(vcpu, addr, len);
  break;
 case 130:
  data = region->read(vcpu, addr, len);
  break;
 case 128:
  data = region->read(iodev->redist_vcpu, addr, len);
  break;
 case 129:
  data = region->its_read(vcpu->kvm, iodev->its, addr, len);
  break;
 }

 vgic_data_host_to_mmio_bus(val, len, data);
 return 0;
}
