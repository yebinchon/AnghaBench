
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_msi {int devid; int flags; int data; int address_hi; int address_lo; } ;
struct TYPE_2__ {int devid; int flags; int data; int address_hi; int address_lo; } ;
struct kvm_kernel_irq_routing_entry {TYPE_1__ msi; } ;



__attribute__((used)) static void kvm_populate_msi(struct kvm_kernel_irq_routing_entry *e,
        struct kvm_msi *msi)
{
 msi->address_lo = e->msi.address_lo;
 msi->address_hi = e->msi.address_hi;
 msi->data = e->msi.data;
 msi->flags = e->msi.flags;
 msi->devid = e->msi.devid;
}
