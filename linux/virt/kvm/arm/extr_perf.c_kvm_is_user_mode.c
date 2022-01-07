
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 struct kvm_vcpu* kvm_arm_get_running_vcpu () ;
 int vcpu_mode_priv (struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_is_user_mode(void)
{
 struct kvm_vcpu *vcpu;

 vcpu = kvm_arm_get_running_vcpu();

 if (vcpu)
  return !vcpu_mode_priv(vcpu);

 return 0;
}
