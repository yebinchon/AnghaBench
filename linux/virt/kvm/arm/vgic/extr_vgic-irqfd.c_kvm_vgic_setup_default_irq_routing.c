
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct vgic_dist {int nr_spis; } ;
struct TYPE_4__ {int pin; scalar_t__ irqchip; } ;
struct TYPE_5__ {TYPE_1__ irqchip; } ;
struct kvm_irq_routing_entry {int gsi; TYPE_2__ u; int type; } ;
struct TYPE_6__ {struct vgic_dist vgic; } ;
struct kvm {TYPE_3__ arch; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int KVM_IRQ_ROUTING_IRQCHIP ;
 struct kvm_irq_routing_entry* kcalloc (int,int,int ) ;
 int kfree (struct kvm_irq_routing_entry*) ;
 int kvm_set_irq_routing (struct kvm*,struct kvm_irq_routing_entry*,int,int ) ;

int kvm_vgic_setup_default_irq_routing(struct kvm *kvm)
{
 struct kvm_irq_routing_entry *entries;
 struct vgic_dist *dist = &kvm->arch.vgic;
 u32 nr = dist->nr_spis;
 int i, ret;

 entries = kcalloc(nr, sizeof(*entries), GFP_KERNEL);
 if (!entries)
  return -ENOMEM;

 for (i = 0; i < nr; i++) {
  entries[i].gsi = i;
  entries[i].type = KVM_IRQ_ROUTING_IRQCHIP;
  entries[i].u.irqchip.irqchip = 0;
  entries[i].u.irqchip.pin = i;
 }
 ret = kvm_set_irq_routing(kvm, entries, nr, 0);
 kfree(entries);
 return ret;
}
