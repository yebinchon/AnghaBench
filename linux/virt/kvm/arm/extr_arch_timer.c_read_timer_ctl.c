
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct arch_timer_context {int cnt_ctl; } ;


 int ARCH_TIMER_CTRL_IT_STAT ;
 int kvm_timer_compute_delta (struct arch_timer_context*) ;

__attribute__((used)) static u64 read_timer_ctl(struct arch_timer_context *timer)
{






 if (!kvm_timer_compute_delta(timer))
  return timer->cnt_ctl | ARCH_TIMER_CTRL_IT_STAT;
 else
  return timer->cnt_ctl;
}
