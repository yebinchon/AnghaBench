
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int online_vcpus; } ;


 scalar_t__ atomic_read (int *) ;
 int unlock_vcpus (struct kvm*,scalar_t__) ;

void unlock_all_vcpus(struct kvm *kvm)
{
 unlock_vcpus(kvm, atomic_read(&kvm->online_vcpus) - 1);
}
