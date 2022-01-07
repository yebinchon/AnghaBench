
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int pin; } ;
struct kvm_kernel_irq_routing_entry {TYPE_1__ irqchip; } ;
struct kvm {int dummy; } ;


 int EINVAL ;
 unsigned int VGIC_NR_PRIVATE_IRQS ;
 int kvm_vgic_inject_irq (struct kvm*,int ,unsigned int,int,int *) ;
 int vgic_valid_spi (struct kvm*,unsigned int) ;

__attribute__((used)) static int vgic_irqfd_set_irq(struct kvm_kernel_irq_routing_entry *e,
   struct kvm *kvm, int irq_source_id,
   int level, bool line_status)
{
 unsigned int spi_id = e->irqchip.pin + VGIC_NR_PRIVATE_IRQS;

 if (!vgic_valid_spi(kvm, spi_id))
  return -EINVAL;
 return kvm_vgic_inject_irq(kvm, 0, spi_id, level, ((void*)0));
}
