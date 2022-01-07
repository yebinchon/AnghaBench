
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct arch_timer_context {scalar_t__ cnt_cval; scalar_t__ cntvoff; scalar_t__ loaded; } ;
typedef enum kvm_arch_timers { ____Placeholder_kvm_arch_timers } kvm_arch_timers ;


 int ARCH_TIMER_CTRL_ENABLE ;
 int ARCH_TIMER_CTRL_IT_MASK ;
 int ARCH_TIMER_CTRL_IT_STAT ;

 int SYS_CNTP_CTL ;
 int SYS_CNTV_CTL ;


 int arch_timer_ctx_index (struct arch_timer_context*) ;
 scalar_t__ kvm_phys_timer_read () ;
 int kvm_timer_irq_can_fire (struct arch_timer_context*) ;
 int read_sysreg_el0 (int ) ;

__attribute__((used)) static bool kvm_timer_should_fire(struct arch_timer_context *timer_ctx)
{
 enum kvm_arch_timers index;
 u64 cval, now;

 if (!timer_ctx)
  return 0;

 index = arch_timer_ctx_index(timer_ctx);

 if (timer_ctx->loaded) {
  u32 cnt_ctl = 0;

  switch (index) {
  case 128:
   cnt_ctl = read_sysreg_el0(SYS_CNTV_CTL);
   break;
  case 129:
   cnt_ctl = read_sysreg_el0(SYS_CNTP_CTL);
   break;
  case 130:

   cnt_ctl = 0;
   break;
  }

  return (cnt_ctl & ARCH_TIMER_CTRL_ENABLE) &&
          (cnt_ctl & ARCH_TIMER_CTRL_IT_STAT) &&
         !(cnt_ctl & ARCH_TIMER_CTRL_IT_MASK);
 }

 if (!kvm_timer_irq_can_fire(timer_ctx))
  return 0;

 cval = timer_ctx->cnt_cval;
 now = kvm_phys_timer_read() - timer_ctx->cntvoff;

 return cval <= now;
}
