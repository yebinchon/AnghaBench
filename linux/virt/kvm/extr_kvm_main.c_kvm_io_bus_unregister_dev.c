
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_io_range {int dummy; } ;
struct kvm_io_device {int dummy; } ;
struct kvm_io_bus {int dev_count; struct kvm_io_bus* range; struct kvm_io_device* dev; } ;
struct kvm {int srcu; int * buses; } ;
typedef enum kvm_bus { ____Placeholder_kvm_bus } kvm_bus ;


 int GFP_KERNEL_ACCOUNT ;
 int kfree (struct kvm_io_bus*) ;
 struct kvm_io_bus* kmalloc (int ,int ) ;
 struct kvm_io_bus* kvm_get_bus (struct kvm*,int) ;
 int memcpy (struct kvm_io_bus*,struct kvm_io_bus*,int) ;
 int pr_err (char*) ;
 int range ;
 int rcu_assign_pointer (int ,struct kvm_io_bus*) ;
 int struct_size (struct kvm_io_bus*,int ,int) ;
 int synchronize_srcu_expedited (int *) ;

void kvm_io_bus_unregister_dev(struct kvm *kvm, enum kvm_bus bus_idx,
          struct kvm_io_device *dev)
{
 int i;
 struct kvm_io_bus *new_bus, *bus;

 bus = kvm_get_bus(kvm, bus_idx);
 if (!bus)
  return;

 for (i = 0; i < bus->dev_count; i++)
  if (bus->range[i].dev == dev) {
   break;
  }

 if (i == bus->dev_count)
  return;

 new_bus = kmalloc(struct_size(bus, range, bus->dev_count - 1),
     GFP_KERNEL_ACCOUNT);
 if (!new_bus) {
  pr_err("kvm: failed to shrink bus, removing it completely\n");
  goto broken;
 }

 memcpy(new_bus, bus, sizeof(*bus) + i * sizeof(struct kvm_io_range));
 new_bus->dev_count--;
 memcpy(new_bus->range + i, bus->range + i + 1,
        (new_bus->dev_count - i) * sizeof(struct kvm_io_range));

broken:
 rcu_assign_pointer(kvm->buses[bus_idx], new_bus);
 synchronize_srcu_expedited(&kvm->srcu);
 kfree(bus);
 return;
}
