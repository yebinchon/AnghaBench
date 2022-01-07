
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vgic_register_region {int (* read ) (struct kvm_vcpu*,int ,int) ;int (* uaccess_read ) (struct kvm_vcpu*,int ,int) ;} ;
struct vgic_io_device {struct kvm_vcpu* redist_vcpu; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_io_device {int dummy; } ;
typedef int gpa_t ;


 struct vgic_io_device* kvm_to_vgic_iodev (struct kvm_io_device*) ;
 int stub1 (struct kvm_vcpu*,int ,int) ;
 int stub2 (struct kvm_vcpu*,int ,int) ;
 struct vgic_register_region* vgic_get_mmio_region (struct kvm_vcpu*,struct vgic_io_device*,int ,int) ;

__attribute__((used)) static int vgic_uaccess_read(struct kvm_vcpu *vcpu, struct kvm_io_device *dev,
        gpa_t addr, u32 *val)
{
 struct vgic_io_device *iodev = kvm_to_vgic_iodev(dev);
 const struct vgic_register_region *region;
 struct kvm_vcpu *r_vcpu;

 region = vgic_get_mmio_region(vcpu, iodev, addr, sizeof(u32));
 if (!region) {
  *val = 0;
  return 0;
 }

 r_vcpu = iodev->redist_vcpu ? iodev->redist_vcpu : vcpu;
 if (region->uaccess_read)
  *val = region->uaccess_read(r_vcpu, addr, sizeof(u32));
 else
  *val = region->read(r_vcpu, addr, sizeof(u32));

 return 0;
}
