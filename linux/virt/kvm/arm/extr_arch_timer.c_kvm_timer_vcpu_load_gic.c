
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int kvm; } ;
struct TYPE_2__ {int level; int irq; } ;
struct arch_timer_context {TYPE_1__ irq; struct kvm_vcpu* vcpu; } ;


 scalar_t__ irqchip_in_kernel (int ) ;
 int kvm_timer_should_fire (struct arch_timer_context*) ;
 int kvm_timer_update_irq (struct kvm_vcpu*,int ,struct arch_timer_context*) ;
 int kvm_vgic_map_is_active (struct kvm_vcpu*,int ) ;
 int set_timer_irq_phys_active (struct arch_timer_context*,int) ;

__attribute__((used)) static void kvm_timer_vcpu_load_gic(struct arch_timer_context *ctx)
{
 struct kvm_vcpu *vcpu = ctx->vcpu;
 bool phys_active = 0;







 kvm_timer_update_irq(ctx->vcpu, kvm_timer_should_fire(ctx), ctx);

 if (irqchip_in_kernel(vcpu->kvm))
  phys_active = kvm_vgic_map_is_active(vcpu, ctx->irq.irq);

 phys_active |= ctx->irq.level;

 set_timer_irq_phys_active(ctx, phys_active);
}
