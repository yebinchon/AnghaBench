
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_coalesced_mmio_zone {int pio; int size; int addr; } ;
struct kvm_coalesced_mmio_dev {int list; int dev; struct kvm_coalesced_mmio_zone zone; struct kvm* kvm; } ;
struct kvm {int slots_lock; int coalesced_zones; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL_ACCOUNT ;
 int KVM_MMIO_BUS ;
 int KVM_PIO_BUS ;
 int coalesced_mmio_ops ;
 int kfree (struct kvm_coalesced_mmio_dev*) ;
 int kvm_io_bus_register_dev (struct kvm*,int ,int ,int ,int *) ;
 int kvm_iodevice_init (int *,int *) ;
 struct kvm_coalesced_mmio_dev* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int kvm_vm_ioctl_register_coalesced_mmio(struct kvm *kvm,
      struct kvm_coalesced_mmio_zone *zone)
{
 int ret;
 struct kvm_coalesced_mmio_dev *dev;

 if (zone->pio != 1 && zone->pio != 0)
  return -EINVAL;

 dev = kzalloc(sizeof(struct kvm_coalesced_mmio_dev),
        GFP_KERNEL_ACCOUNT);
 if (!dev)
  return -ENOMEM;

 kvm_iodevice_init(&dev->dev, &coalesced_mmio_ops);
 dev->kvm = kvm;
 dev->zone = *zone;

 mutex_lock(&kvm->slots_lock);
 ret = kvm_io_bus_register_dev(kvm,
    zone->pio ? KVM_PIO_BUS : KVM_MMIO_BUS,
    zone->addr, zone->size, &dev->dev);
 if (ret < 0)
  goto out_free_dev;
 list_add_tail(&dev->list, &kvm->coalesced_zones);
 mutex_unlock(&kvm->slots_lock);

 return 0;

out_free_dev:
 mutex_unlock(&kvm->slots_lock);
 kfree(dev);

 return ret;
}
