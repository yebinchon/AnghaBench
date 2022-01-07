
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {struct arch_timer_context* timers; } ;
struct TYPE_4__ {TYPE_1__ timer_cpu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct arch_timer_context {int loaded; } ;


 int NR_KVM_TIMERS ;
 scalar_t__ ULLONG_MAX ;
 int WARN (int ,char*,int) ;
 int kvm_timer_compute_delta (struct arch_timer_context*) ;
 scalar_t__ kvm_timer_irq_can_fire (struct arch_timer_context*) ;
 scalar_t__ min (scalar_t__,int ) ;

__attribute__((used)) static u64 kvm_timer_earliest_exp(struct kvm_vcpu *vcpu)
{
 u64 min_delta = ULLONG_MAX;
 int i;

 for (i = 0; i < NR_KVM_TIMERS; i++) {
  struct arch_timer_context *ctx = &vcpu->arch.timer_cpu.timers[i];

  WARN(ctx->loaded, "timer %d loaded\n", i);
  if (kvm_timer_irq_can_fire(ctx))
   min_delta = min(min_delta, kvm_timer_compute_delta(ctx));
 }


 if (min_delta == ULLONG_MAX)
  return 0;

 return min_delta;
}
