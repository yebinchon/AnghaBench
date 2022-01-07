
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int mutex; } ;
struct kvm {int dummy; } ;


 struct kvm_vcpu* kvm_get_vcpu (struct kvm*,int) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void unlock_vcpus(struct kvm *kvm, int vcpu_lock_idx)
{
 struct kvm_vcpu *tmp_vcpu;

 for (; vcpu_lock_idx >= 0; vcpu_lock_idx--) {
  tmp_vcpu = kvm_get_vcpu(kvm, vcpu_lock_idx);
  mutex_unlock(&tmp_vcpu->mutex);
 }
}
