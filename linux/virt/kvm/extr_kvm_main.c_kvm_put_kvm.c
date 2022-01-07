
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int users_count; } ;


 int kvm_destroy_vm (struct kvm*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void kvm_put_kvm(struct kvm *kvm)
{
 if (refcount_dec_and_test(&kvm->users_count))
  kvm_destroy_vm(kvm);
}
