
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int vcpu_id; int kvm; } ;
struct TYPE_2__ {int level; int irq; } ;
struct arch_timer_context {TYPE_1__ irq; } ;


 int WARN_ON (int) ;
 int kvm_vgic_inject_irq (int ,int ,int ,int,struct arch_timer_context*) ;
 int trace_kvm_timer_update_irq (int ,int ,int) ;
 int userspace_irqchip (int ) ;

__attribute__((used)) static void kvm_timer_update_irq(struct kvm_vcpu *vcpu, bool new_level,
     struct arch_timer_context *timer_ctx)
{
 int ret;

 timer_ctx->irq.level = new_level;
 trace_kvm_timer_update_irq(vcpu->vcpu_id, timer_ctx->irq.irq,
       timer_ctx->irq.level);

 if (!userspace_irqchip(vcpu->kvm)) {
  ret = kvm_vgic_inject_irq(vcpu->kvm, vcpu->vcpu_id,
       timer_ctx->irq.irq,
       timer_ctx->irq.level,
       timer_ctx);
  WARN_ON(ret);
 }
}
