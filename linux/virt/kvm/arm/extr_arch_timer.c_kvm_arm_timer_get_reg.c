
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
 int TIMER_REG_CNT ;
 int TIMER_REG_CTL ;
 int TIMER_REG_CVAL ;
 int kvm_arm_timer_read (struct kvm_vcpu*,int ,int ) ;
 int vcpu_ptimer (struct kvm_vcpu*) ;
 int vcpu_vtimer (struct kvm_vcpu*) ;

u64 kvm_arm_timer_get_reg(struct kvm_vcpu *vcpu, u64 regid)
{
 switch (regid) {
 case 129:
  return kvm_arm_timer_read(vcpu,
       vcpu_vtimer(vcpu), TIMER_REG_CTL);
 case 130:
  return kvm_arm_timer_read(vcpu,
       vcpu_vtimer(vcpu), TIMER_REG_CNT);
 case 128:
  return kvm_arm_timer_read(vcpu,
       vcpu_vtimer(vcpu), TIMER_REG_CVAL);
 case 132:
  return kvm_arm_timer_read(vcpu,
       vcpu_ptimer(vcpu), TIMER_REG_CTL);
 case 133:
  return kvm_arm_timer_read(vcpu,
       vcpu_vtimer(vcpu), TIMER_REG_CNT);
 case 131:
  return kvm_arm_timer_read(vcpu,
       vcpu_ptimer(vcpu), TIMER_REG_CVAL);
 }
 return (u64)-1;
}
