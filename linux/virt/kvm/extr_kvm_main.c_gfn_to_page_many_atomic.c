
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kvm_memory_slot {int dummy; } ;
typedef int gfn_t ;


 int __get_user_pages_fast (unsigned long,int,int,struct page**) ;
 unsigned long gfn_to_hva_many (struct kvm_memory_slot*,int,int*) ;
 scalar_t__ kvm_is_error_hva (unsigned long) ;

int gfn_to_page_many_atomic(struct kvm_memory_slot *slot, gfn_t gfn,
       struct page **pages, int nr_pages)
{
 unsigned long addr;
 gfn_t entry = 0;

 addr = gfn_to_hva_many(slot, gfn, &entry);
 if (kvm_is_error_hva(addr))
  return -1;

 if (entry < nr_pages)
  return 0;

 return __get_user_pages_fast(addr, nr_pages, 1, pages);
}
