
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
struct arch_timer_context {int dummy; } ;







 int TIMER_REG_CTL ;
 int TIMER_REG_CVAL ;
 int kvm_arm_timer_write (struct kvm_vcpu*,struct arch_timer_context*,int ,int) ;
 int kvm_phys_timer_read () ;
 int update_vtimer_cntvoff (struct kvm_vcpu*,int) ;
 struct arch_timer_context* vcpu_ptimer (struct kvm_vcpu*) ;
 struct arch_timer_context* vcpu_vtimer (struct kvm_vcpu*) ;

int kvm_arm_timer_set_reg(struct kvm_vcpu *vcpu, u64 regid, u64 value)
{
 struct arch_timer_context *timer;

 switch (regid) {
 case 129:
  timer = vcpu_vtimer(vcpu);
  kvm_arm_timer_write(vcpu, timer, TIMER_REG_CTL, value);
  break;
 case 130:
  timer = vcpu_vtimer(vcpu);
  update_vtimer_cntvoff(vcpu, kvm_phys_timer_read() - value);
  break;
 case 128:
  timer = vcpu_vtimer(vcpu);
  kvm_arm_timer_write(vcpu, timer, TIMER_REG_CVAL, value);
  break;
 case 132:
  timer = vcpu_ptimer(vcpu);
  kvm_arm_timer_write(vcpu, timer, TIMER_REG_CTL, value);
  break;
 case 131:
  timer = vcpu_ptimer(vcpu);
  kvm_arm_timer_write(vcpu, timer, TIMER_REG_CVAL, value);
  break;

 default:
  return -1;
 }

 return 0;
}
