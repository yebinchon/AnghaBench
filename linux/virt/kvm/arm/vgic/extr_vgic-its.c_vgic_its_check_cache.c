
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vgic_irq {int dummy; } ;
struct vgic_dist {int lpi_list_lock; } ;
struct TYPE_2__ {struct vgic_dist vgic; } ;
struct kvm {TYPE_1__ arch; } ;
typedef int phys_addr_t ;


 struct vgic_irq* __vgic_its_check_cache (struct vgic_dist*,int ,int ,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct vgic_irq *vgic_its_check_cache(struct kvm *kvm, phys_addr_t db,
          u32 devid, u32 eventid)
{
 struct vgic_dist *dist = &kvm->arch.vgic;
 struct vgic_irq *irq;
 unsigned long flags;

 raw_spin_lock_irqsave(&dist->lpi_list_lock, flags);
 irq = __vgic_its_check_cache(dist, db, devid, eventid);
 raw_spin_unlock_irqrestore(&dist->lpi_list_lock, flags);

 return irq;
}
