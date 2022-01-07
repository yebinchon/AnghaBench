
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arch_timer_cpu {int enabled; } ;
struct arch_timer_context {int loaded; int cnt_ctl; int cnt_cval; int vcpu; } ;
typedef enum kvm_arch_timers { ____Placeholder_kvm_arch_timers } kvm_arch_timers ;


 int BUG () ;

 int SYS_CNTP_CTL ;
 int SYS_CNTP_CVAL ;
 int SYS_CNTV_CTL ;
 int SYS_CNTV_CVAL ;


 int arch_timer_ctx_index (struct arch_timer_context*) ;
 int isb () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int trace_kvm_timer_restore_state (struct arch_timer_context*) ;
 struct arch_timer_cpu* vcpu_timer (int ) ;
 int write_sysreg_el0 (int ,int ) ;

__attribute__((used)) static void timer_restore_state(struct arch_timer_context *ctx)
{
 struct arch_timer_cpu *timer = vcpu_timer(ctx->vcpu);
 enum kvm_arch_timers index = arch_timer_ctx_index(ctx);
 unsigned long flags;

 if (!timer->enabled)
  return;

 local_irq_save(flags);

 if (ctx->loaded)
  goto out;

 switch (index) {
 case 128:
  write_sysreg_el0(ctx->cnt_cval, SYS_CNTV_CVAL);
  isb();
  write_sysreg_el0(ctx->cnt_ctl, SYS_CNTV_CTL);
  break;
 case 129:
  write_sysreg_el0(ctx->cnt_cval, SYS_CNTP_CVAL);
  isb();
  write_sysreg_el0(ctx->cnt_ctl, SYS_CNTP_CTL);
  break;
 case 130:
  BUG();
 }

 trace_kvm_timer_restore_state(ctx);

 ctx->loaded = 1;
out:
 local_irq_restore(flags);
}
