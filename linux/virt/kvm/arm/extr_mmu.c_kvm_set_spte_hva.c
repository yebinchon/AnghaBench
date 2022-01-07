
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pgd; } ;
struct kvm {TYPE_1__ arch; } ;
typedef int pte_t ;
typedef int kvm_pfn_t ;


 int PAGE_S2 ;
 unsigned long PAGE_SIZE ;
 int clean_dcache_guest_page (int ,unsigned long) ;
 int handle_hva_to_gpa (struct kvm*,unsigned long,unsigned long,int *,int *) ;
 int kvm_pfn_pte (int ,int ) ;
 int kvm_set_spte_handler ;
 int pte_pfn (int ) ;
 int trace_kvm_set_spte_hva (unsigned long) ;

int kvm_set_spte_hva(struct kvm *kvm, unsigned long hva, pte_t pte)
{
 unsigned long end = hva + PAGE_SIZE;
 kvm_pfn_t pfn = pte_pfn(pte);
 pte_t stage2_pte;

 if (!kvm->arch.pgd)
  return 0;

 trace_kvm_set_spte_hva(hva);





 clean_dcache_guest_page(pfn, PAGE_SIZE);
 stage2_pte = kvm_pfn_pte(pfn, PAGE_S2);
 handle_hva_to_gpa(kvm, hva, end, &kvm_set_spte_handler, &stage2_pte);

 return 0;
}
