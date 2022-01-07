
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_msi {int dummy; } ;
struct kvm_kernel_irq_routing_entry {scalar_t__ type; } ;
struct kvm {int dummy; } ;


 int EWOULDBLOCK ;
 scalar_t__ KVM_IRQ_ROUTING_MSI ;
 int kvm_populate_msi (struct kvm_kernel_irq_routing_entry*,struct kvm_msi*) ;
 scalar_t__ vgic_has_its (struct kvm*) ;
 int vgic_its_inject_cached_translation (struct kvm*,struct kvm_msi*) ;

int kvm_arch_set_irq_inatomic(struct kvm_kernel_irq_routing_entry *e,
         struct kvm *kvm, int irq_source_id, int level,
         bool line_status)
{
 if (e->type == KVM_IRQ_ROUTING_MSI && vgic_has_its(kvm) && level) {
  struct kvm_msi msi;

  kvm_populate_msi(e, &msi);
  if (!vgic_its_inject_cached_translation(kvm, &msi))
   return 0;
 }

 return -EWOULDBLOCK;
}
