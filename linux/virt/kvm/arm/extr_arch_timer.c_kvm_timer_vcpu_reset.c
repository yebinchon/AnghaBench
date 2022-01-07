
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct timer_map {TYPE_5__* emul_ptimer; TYPE_4__* direct_ptimer; TYPE_2__* direct_vtimer; } ;
struct kvm_vcpu {int kvm; } ;
struct arch_timer_cpu {scalar_t__ enabled; } ;
struct TYPE_14__ {scalar_t__ cnt_ctl; } ;
struct TYPE_13__ {int hrtimer; } ;
struct TYPE_11__ {int irq; } ;
struct TYPE_12__ {TYPE_3__ irq; } ;
struct TYPE_9__ {int irq; } ;
struct TYPE_10__ {TYPE_1__ irq; } ;


 int get_timer_map (struct kvm_vcpu*,struct timer_map*) ;
 scalar_t__ irqchip_in_kernel (int ) ;
 int kvm_timer_update_irq (struct kvm_vcpu*,int,TYPE_6__*) ;
 int kvm_vgic_reset_mapped_irq (struct kvm_vcpu*,int ) ;
 int soft_timer_cancel (int *) ;
 TYPE_6__* vcpu_ptimer (struct kvm_vcpu*) ;
 struct arch_timer_cpu* vcpu_timer (struct kvm_vcpu*) ;
 TYPE_6__* vcpu_vtimer (struct kvm_vcpu*) ;

int kvm_timer_vcpu_reset(struct kvm_vcpu *vcpu)
{
 struct arch_timer_cpu *timer = vcpu_timer(vcpu);
 struct timer_map map;

 get_timer_map(vcpu, &map);







 vcpu_vtimer(vcpu)->cnt_ctl = 0;
 vcpu_ptimer(vcpu)->cnt_ctl = 0;

 if (timer->enabled) {
  kvm_timer_update_irq(vcpu, 0, vcpu_vtimer(vcpu));
  kvm_timer_update_irq(vcpu, 0, vcpu_ptimer(vcpu));

  if (irqchip_in_kernel(vcpu->kvm)) {
   kvm_vgic_reset_mapped_irq(vcpu, map.direct_vtimer->irq.irq);
   if (map.direct_ptimer)
    kvm_vgic_reset_mapped_irq(vcpu, map.direct_ptimer->irq.irq);
  }
 }

 if (map.emul_ptimer)
  soft_timer_cancel(&map.emul_ptimer->hrtimer);

 return 0;
}
