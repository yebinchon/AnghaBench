
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
typedef enum kvm_arch_timers { ____Placeholder_kvm_arch_timers } kvm_arch_timers ;
typedef enum kvm_arch_timer_regs { ____Placeholder_kvm_arch_timer_regs } kvm_arch_timer_regs ;


 int kvm_arm_timer_read (struct kvm_vcpu*,int ,int) ;
 int kvm_timer_vcpu_load (struct kvm_vcpu*) ;
 int kvm_timer_vcpu_put (struct kvm_vcpu*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int vcpu_get_timer (struct kvm_vcpu*,int) ;

u64 kvm_arm_timer_read_sysreg(struct kvm_vcpu *vcpu,
         enum kvm_arch_timers tmr,
         enum kvm_arch_timer_regs treg)
{
 u64 val;

 preempt_disable();
 kvm_timer_vcpu_put(vcpu);

 val = kvm_arm_timer_read(vcpu, vcpu_get_timer(vcpu, tmr), treg);

 kvm_timer_vcpu_load(vcpu);
 preempt_enable();

 return val;
}
