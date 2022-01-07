
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_io_device {int dummy; } ;
struct kvm_io_bus {int dev_count; TYPE_1__* range; } ;
struct TYPE_2__ {struct kvm_io_device* dev; } ;


 int kfree (struct kvm_io_bus*) ;
 int kvm_iodevice_destructor (struct kvm_io_device*) ;

__attribute__((used)) static void kvm_io_bus_destroy(struct kvm_io_bus *bus)
{
 int i;

 for (i = 0; i < bus->dev_count; i++) {
  struct kvm_io_device *pos = bus->range[i].dev;

  kvm_iodevice_destructor(pos);
 }
 kfree(bus);
}
