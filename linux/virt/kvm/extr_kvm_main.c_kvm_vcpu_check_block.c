
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {TYPE_1__* kvm; } ;
struct TYPE_2__ {int srcu; } ;


 int EINTR ;
 int KVM_REQ_UNHALT ;
 int current ;
 scalar_t__ kvm_arch_vcpu_runnable (struct kvm_vcpu*) ;
 scalar_t__ kvm_cpu_has_pending_timer (struct kvm_vcpu*) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 scalar_t__ signal_pending (int ) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

__attribute__((used)) static int kvm_vcpu_check_block(struct kvm_vcpu *vcpu)
{
 int ret = -EINTR;
 int idx = srcu_read_lock(&vcpu->kvm->srcu);

 if (kvm_arch_vcpu_runnable(vcpu)) {
  kvm_make_request(KVM_REQ_UNHALT, vcpu);
  goto out;
 }
 if (kvm_cpu_has_pending_timer(vcpu))
  goto out;
 if (signal_pending(current))
  goto out;

 ret = 0;
out:
 srcu_read_unlock(&vcpu->kvm->srcu, idx);
 return ret;
}
