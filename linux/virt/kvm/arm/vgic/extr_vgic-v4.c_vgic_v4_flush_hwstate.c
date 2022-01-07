
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int irq; } ;
struct TYPE_5__ {TYPE_4__ its_vpe; } ;
struct TYPE_6__ {TYPE_1__ vgic_v3; } ;
struct TYPE_7__ {TYPE_2__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_3__ arch; int kvm; } ;


 int IRQCHIP_STATE_PENDING ;
 int cpumask_of (int ) ;
 int irq_set_affinity (int,int ) ;
 int irq_set_irqchip_state (int,int ,int) ;
 int its_schedule_vpe (TYPE_4__*,int) ;
 int smp_processor_id () ;
 int vgic_supports_direct_msis (int ) ;

int vgic_v4_flush_hwstate(struct kvm_vcpu *vcpu)
{
 int irq = vcpu->arch.vgic_cpu.vgic_v3.its_vpe.irq;
 int err;

 if (!vgic_supports_direct_msis(vcpu->kvm))
  return 0;







 err = irq_set_affinity(irq, cpumask_of(smp_processor_id()));
 if (err)
  return err;

 err = its_schedule_vpe(&vcpu->arch.vgic_cpu.vgic_v3.its_vpe, 1);
 if (err)
  return err;





 err = irq_set_irqchip_state(irq, IRQCHIP_STATE_PENDING, 0);

 return err;
}
