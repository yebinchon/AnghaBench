
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pgd; } ;
struct kvm {TYPE_1__ arch; } ;


 int handle_hva_to_gpa (struct kvm*,unsigned long,unsigned long,int ,int *) ;
 int kvm_age_hva_handler ;
 int trace_kvm_age_hva (unsigned long,unsigned long) ;

int kvm_age_hva(struct kvm *kvm, unsigned long start, unsigned long end)
{
 if (!kvm->arch.pgd)
  return 0;
 trace_kvm_age_hva(start, end);
 return handle_hva_to_gpa(kvm, start, end, kvm_age_hva_handler, ((void*)0));
}
