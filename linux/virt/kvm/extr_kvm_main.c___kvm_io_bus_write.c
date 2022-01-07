
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct kvm_io_range {int len; int addr; } ;
struct kvm_io_bus {int dev_count; TYPE_1__* range; } ;
struct TYPE_2__ {int dev; } ;


 int EOPNOTSUPP ;
 scalar_t__ kvm_io_bus_cmp (struct kvm_io_range*,TYPE_1__*) ;
 int kvm_io_bus_get_first_dev (struct kvm_io_bus*,int ,int ) ;
 int kvm_iodevice_write (struct kvm_vcpu*,int ,int ,int ,void const*) ;

__attribute__((used)) static int __kvm_io_bus_write(struct kvm_vcpu *vcpu, struct kvm_io_bus *bus,
         struct kvm_io_range *range, const void *val)
{
 int idx;

 idx = kvm_io_bus_get_first_dev(bus, range->addr, range->len);
 if (idx < 0)
  return -EOPNOTSUPP;

 while (idx < bus->dev_count &&
  kvm_io_bus_cmp(range, &bus->range[idx]) == 0) {
  if (!kvm_iodevice_write(vcpu, bus->range[idx].dev, range->addr,
     range->len, val))
   return idx;
  idx++;
 }

 return -EOPNOTSUPP;
}
