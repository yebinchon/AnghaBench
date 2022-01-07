
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vgic_io_device {int dev; int * redist_vcpu; int iodev_type; int base_addr; } ;
struct TYPE_3__ {struct vgic_io_device dist_iodev; } ;
struct TYPE_4__ {TYPE_1__ vgic; } ;
struct kvm {int slots_lock; TYPE_2__ arch; } ;
typedef int gpa_t ;
typedef enum vgic_type { ____Placeholder_vgic_type } vgic_type ;


 int BUG_ON (int) ;
 int IODEV_DIST ;
 int KVM_MMIO_BUS ;


 int kvm_io_bus_register_dev (struct kvm*,int ,int ,unsigned int,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int vgic_v2_init_dist_iodev (struct vgic_io_device*) ;
 unsigned int vgic_v3_init_dist_iodev (struct vgic_io_device*) ;

int vgic_register_dist_iodev(struct kvm *kvm, gpa_t dist_base_address,
        enum vgic_type type)
{
 struct vgic_io_device *io_device = &kvm->arch.vgic.dist_iodev;
 int ret = 0;
 unsigned int len;

 switch (type) {
 case 129:
  len = vgic_v2_init_dist_iodev(io_device);
  break;
 case 128:
  len = vgic_v3_init_dist_iodev(io_device);
  break;
 default:
  BUG_ON(1);
 }

 io_device->base_addr = dist_base_address;
 io_device->iodev_type = IODEV_DIST;
 io_device->redist_vcpu = ((void*)0);

 mutex_lock(&kvm->slots_lock);
 ret = kvm_io_bus_register_dev(kvm, KVM_MMIO_BUS, dist_base_address,
          len, &io_device->dev);
 mutex_unlock(&kvm->slots_lock);

 return ret;
}
