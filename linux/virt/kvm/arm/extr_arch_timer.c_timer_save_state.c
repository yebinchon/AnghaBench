
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arch_timer_cpu {int enabled; } ;
struct arch_timer_context {int loaded; void* cnt_cval; void* cnt_ctl; int vcpu; } ;
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
 void* read_sysreg_el0 (int ) ;
 int trace_kvm_timer_save_state (struct arch_timer_context*) ;
 struct arch_timer_cpu* vcpu_timer (int ) ;
 int write_sysreg_el0 (int ,int ) ;

__attribute__((used)) static void timer_save_state(struct arch_timer_context *ctx)
{
 struct arch_timer_cpu *timer = vcpu_timer(ctx->vcpu);
 enum kvm_arch_timers index = arch_timer_ctx_index(ctx);
 unsigned long flags;

 if (!timer->enabled)
  return;

 local_irq_save(flags);

 if (!ctx->loaded)
  goto out;

 switch (index) {
 case 128:
  ctx->cnt_ctl = read_sysreg_el0(SYS_CNTV_CTL);
  ctx->cnt_cval = read_sysreg_el0(SYS_CNTV_CVAL);


  write_sysreg_el0(0, SYS_CNTV_CTL);
  isb();

  break;
 case 129:
  ctx->cnt_ctl = read_sysreg_el0(SYS_CNTP_CTL);
  ctx->cnt_cval = read_sysreg_el0(SYS_CNTP_CVAL);


  write_sysreg_el0(0, SYS_CNTP_CTL);
  isb();

  break;
 case 130:
  BUG();
 }

 trace_kvm_timer_save_state(ctx);

 ctx->loaded = 0;
out:
 local_irq_restore(flags);
}
