
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct kvm {int dummy; } ;
typedef int pte_t ;
typedef int gpa_t ;


 scalar_t__ PAGE_SIZE ;
 int WARN_ON (int) ;
 int stage2_set_pte (struct kvm*,int *,int ,int *,int ) ;

__attribute__((used)) static int kvm_set_spte_handler(struct kvm *kvm, gpa_t gpa, u64 size, void *data)
{
 pte_t *pte = (pte_t *)data;

 WARN_ON(size != PAGE_SIZE);







 stage2_set_pte(kvm, ((void*)0), gpa, pte, 0);
 return 0;
}
