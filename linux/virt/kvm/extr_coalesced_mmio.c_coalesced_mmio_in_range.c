
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ addr; scalar_t__ size; } ;
struct kvm_coalesced_mmio_dev {TYPE_1__ zone; } ;
typedef scalar_t__ gpa_t ;



__attribute__((used)) static int coalesced_mmio_in_range(struct kvm_coalesced_mmio_dev *dev,
       gpa_t addr, int len)
{




 if (len < 0)
  return 0;
 if (addr + len < addr)
  return 0;
 if (addr < dev->zone.addr)
  return 0;
 if (addr + len > dev->zone.addr + dev->zone.size)
  return 0;
 return 1;
}
