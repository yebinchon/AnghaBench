
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct kvm_vcpu {int dummy; } ;
struct arch_timer_context {scalar_t__ cntvoff; scalar_t__ cnt_cval; } ;
typedef enum kvm_arch_timer_regs { ____Placeholder_kvm_arch_timer_regs } kvm_arch_timer_regs ;


 int BUG () ;




 scalar_t__ kvm_phys_timer_read () ;
 scalar_t__ read_timer_ctl (struct arch_timer_context*) ;

__attribute__((used)) static u64 kvm_arm_timer_read(struct kvm_vcpu *vcpu,
         struct arch_timer_context *timer,
         enum kvm_arch_timer_regs treg)
{
 u64 val;

 switch (treg) {
 case 128:
  val = timer->cnt_cval - kvm_phys_timer_read() + timer->cntvoff;
  break;

 case 130:
  val = read_timer_ctl(timer);
  break;

 case 129:
  val = timer->cnt_cval;
  break;

 case 131:
  val = kvm_phys_timer_read() - timer->cntvoff;
  break;

 default:
  BUG();
 }

 return val;
}
