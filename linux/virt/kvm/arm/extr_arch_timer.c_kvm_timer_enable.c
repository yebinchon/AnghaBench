
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timer_map {TYPE_4__* direct_ptimer; TYPE_2__* direct_vtimer; } ;
struct kvm_vcpu {int kvm; } ;
struct arch_timer_cpu {int enabled; } ;
struct TYPE_7__ {int irq; } ;
struct TYPE_8__ {TYPE_3__ irq; int host_timer_irq; } ;
struct TYPE_5__ {int irq; } ;
struct TYPE_6__ {TYPE_1__ irq; int host_timer_irq; } ;


 int EINVAL ;
 int ENODEV ;
 int get_timer_map (struct kvm_vcpu*,struct timer_map*) ;
 int irqchip_in_kernel (int ) ;
 int kvm_arch_timer_get_input_level ;
 int kvm_debug (char*) ;
 int kvm_vgic_map_phys_irq (struct kvm_vcpu*,int ,int ,int ) ;
 int timer_irqs_are_valid (struct kvm_vcpu*) ;
 struct arch_timer_cpu* vcpu_timer (struct kvm_vcpu*) ;
 int vgic_initialized (int ) ;

int kvm_timer_enable(struct kvm_vcpu *vcpu)
{
 struct arch_timer_cpu *timer = vcpu_timer(vcpu);
 struct timer_map map;
 int ret;

 if (timer->enabled)
  return 0;


 if (!irqchip_in_kernel(vcpu->kvm))
  goto no_vgic;

 if (!vgic_initialized(vcpu->kvm))
  return -ENODEV;

 if (!timer_irqs_are_valid(vcpu)) {
  kvm_debug("incorrectly configured timer irqs\n");
  return -EINVAL;
 }

 get_timer_map(vcpu, &map);

 ret = kvm_vgic_map_phys_irq(vcpu,
        map.direct_vtimer->host_timer_irq,
        map.direct_vtimer->irq.irq,
        kvm_arch_timer_get_input_level);
 if (ret)
  return ret;

 if (map.direct_ptimer) {
  ret = kvm_vgic_map_phys_irq(vcpu,
         map.direct_ptimer->host_timer_irq,
         map.direct_ptimer->irq.irq,
         kvm_arch_timer_get_input_level);
 }

 if (ret)
  return ret;

no_vgic:
 timer->enabled = 1;
 return 0;
}
