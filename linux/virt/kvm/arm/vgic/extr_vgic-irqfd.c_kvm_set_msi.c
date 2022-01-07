
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_msi {int dummy; } ;
struct kvm_kernel_irq_routing_entry {int dummy; } ;
struct kvm {int dummy; } ;


 int ENODEV ;
 int kvm_populate_msi (struct kvm_kernel_irq_routing_entry*,struct kvm_msi*) ;
 int vgic_has_its (struct kvm*) ;
 int vgic_its_inject_msi (struct kvm*,struct kvm_msi*) ;

int kvm_set_msi(struct kvm_kernel_irq_routing_entry *e,
  struct kvm *kvm, int irq_source_id,
  int level, bool line_status)
{
 struct kvm_msi msi;

 if (!vgic_has_its(kvm))
  return -ENODEV;

 if (!level)
  return -1;

 kvm_populate_msi(e, &msi);
 return vgic_its_inject_msi(kvm, &msi);
}
