
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_io_device {int dummy; } ;
struct kvm_io_bus {TYPE_1__* range; } ;
struct kvm {int srcu; int * buses; } ;
typedef int gpa_t ;
typedef enum kvm_bus { ____Placeholder_kvm_bus } kvm_bus ;
struct TYPE_2__ {struct kvm_io_device* dev; } ;


 int kvm_io_bus_get_first_dev (struct kvm_io_bus*,int ,int) ;
 struct kvm_io_bus* srcu_dereference (int ,int *) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

struct kvm_io_device *kvm_io_bus_get_dev(struct kvm *kvm, enum kvm_bus bus_idx,
      gpa_t addr)
{
 struct kvm_io_bus *bus;
 int dev_idx, srcu_idx;
 struct kvm_io_device *iodev = ((void*)0);

 srcu_idx = srcu_read_lock(&kvm->srcu);

 bus = srcu_dereference(kvm->buses[bus_idx], &kvm->srcu);
 if (!bus)
  goto out_unlock;

 dev_idx = kvm_io_bus_get_first_dev(bus, addr, 1);
 if (dev_idx < 0)
  goto out_unlock;

 iodev = bus->range[dev_idx].dev;

out_unlock:
 srcu_read_unlock(&kvm->srcu, srcu_idx);

 return iodev;
}
